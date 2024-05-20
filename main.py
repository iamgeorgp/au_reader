import os
import sys
import asyncio
import uvicorn
from fastapi import FastAPI, UploadFile, File, Request, HTTPException

from scan import build_answer

app = FastAPI()
users = {
    "login": "123",
    "admin": "admin"
}
tests = {}

if "USERS" in os.environ:
    users.update({k: v for k, v in [pair.split(":") for pair in os.environ["USERS"].split(",")]})

@app.post("/upload")
async def upload_photo(test_number: int, photo: UploadFile = File(...)):
    """
    Uploads a photo and analyzes it to get the answers to the test.
    
    Parameters:
    - test_number (int): The test number.
    - photo (UploadFile): The uploaded image file.

    Returns:
    - Dict[str, Any]: The result of analyzing the photo.
    """
    if test_number not in tests:
        return {"error": "Test number not found"}
    photos_dir = "photos"
    if not os.path.exists(photos_dir):
        os.makedirs(photos_dir)
    with open(os.path.join(photos_dir, photo.filename), "wb") as f:
        f.write(photo.file.read())
    correct_answers = [{"question": str(i), "correct_answer": answer} for i, answer in tests[test_number].items()]
    try:
        answer = build_answer(os.path.join(photos_dir, photo.filename), correct_answers, test_number)
    except ValueError as e:
        return {"error": f"Ошибка обработки изображения: {e}", "answer": None}
    if answer is None:
        return {"error": "Invalid photo format"}
    if "answer" not in answer or "total-correct-answers" not in answer or "total-incorrect-answers" not in answer:
        return {"error": "Invalid photo format"}
    result = {
        "qr_info": answer["qr_info"],
        "answers": answer["answer"],
        "total-correct-answers": answer["total-correct-answers"],
        "total-incorrect-answers": answer["total-incorrect-answers"],
        "test_number": answer["total-incorrect-answers"]
    }
    return result

@app.post("/auth")
async def auth(request: Request):
    """
    Authenticates the user and saves test answers.

    Parameters:
    - request (Request): The HTTP request.

    Returns:
    - Dict[str, Any]: The result of authentication and saving answers.
    """
    data = await request.json()
    login = data.get("login")
    password = data.get("password")
    test_number = int(data.get("number"))
    answers = data.get("test")
    if login not in users or users[login] != password:
        raise HTTPException(status_code=401, detail="Invalid login or password")
    if test_number not in tests:
        tests[test_number] = {}
    for answer in answers:
        question = answer.get("question")
        correct_answer = answer.get("correct_answer")
        tests[test_number][question] = correct_answer
    return {"result": "ok", "test_data": tests[test_number]}

async def run_server():
    """
    Starts the FastAPI server.
    """
    u_config = uvicorn.Config("main:app", host="0.0.0.0", port=8080, log_level="info", reload=True)
    server = uvicorn.Server(u_config)
    await server.serve()

async def main():
    """
    The main function that starts the server.
    """
    tasks = [
        run_server(),
    ]
    await asyncio.gather(*tasks, return_exceptions=True)

if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    try:
        loop.run_until_complete(main())
        loop.run_forever()
        loop.close()
    except KeyboardInterrupt:
        sys.exit(0)