import cv2
import numpy as np
from pyzbar.pyzbar import decode
import json

def extract_sheet(image, threshold_value=140, max_value=240):
  try:
      gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
      _, thresh = cv2.threshold(gray, threshold_value, max_value, cv2.THRESH_BINARY)
      contours, _ = cv2.findContours(thresh, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
      largest_contour = max(contours, key=cv2.contourArea)
      x, y, w, h = cv2.boundingRect(largest_contour)
      cropped_image = image[y:y+h, x:x+w]
      return cropped_image
  except Exception as e:
      return None
  
def decode_qr_code(image):
    try:
        blurred = cv2.GaussianBlur(image, (5, 5), 0)
        gray = cv2.cvtColor(blurred, cv2.COLOR_BGR2GRAY)
        clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
        enhanced = clahe.apply(gray)
        decoded_objects = decode(enhanced)

        data_of_qr = []
        for obj in decoded_objects:
            data_of_qr.append(obj.data.decode())

        return image, decoded_objects, data_of_qr
    except Exception as e:
        return None, None, None
    

def crop_image_below_qr(image, decoded_objects):
    try:
        if decoded_objects:
            bottom_qr_y = max(obj.rect[1] + obj.rect[3] for obj in decoded_objects)
            cropped_image = image[bottom_qr_y:, :]
            return cropped_image
        else:
            return None
    except Exception as e:
        return None
    

def initial_processing(path_to_image):
  start_image = cv2.imread(path_to_image)
  sheet_image = extract_sheet(start_image)
  temp_image, decoded_objects, qr_data = decode_qr_code(sheet_image)
  raw_image_without_qr = crop_image_below_qr(sheet_image, decoded_objects)
  raw_table = extract_sheet(raw_image_without_qr)
  return raw_table, qr_data

def find_corners(image):
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    _, thresh = cv2.threshold(gray, 100, 150, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)
    contour_list, _ = cv2.findContours(thresh, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    largest_contour = max(contour_list, key=cv2.contourArea)
    perimeter = cv2.arcLength(largest_contour, True)
    corner_points = cv2.approxPolyDP(largest_contour, 0.1 * perimeter, closed=True)
    return corner_points

def find_table(im):
    corner_points = find_corners(im)
    source_points = np.float32(
        [
            corner_points[0][0],
            corner_points[3][0],
            corner_points[2][0],
            corner_points[1][0],
        ]
    )
    width = max(np.linalg.norm(source_points[0] - source_points[1]), np.linalg.norm(source_points[2] - source_points[3]),)
    height = max(np.linalg.norm(source_points[0] - source_points[3]), np.linalg.norm(source_points[1] - source_points[2]),)
    destination_points = np.float32([[0, 0], [width - 1, 0], [width - 1, height - 1], [0, height - 1]])
    perspective_matrix = cv2.getPerspectiveTransform(source_points, destination_points)
    corrected_image = cv2.warpPerspective(im, perspective_matrix, (int(width), int(height)))
    corrected_image = cv2.rotate(corrected_image, cv2.ROTATE_90_CLOCKWISE)
    return corrected_image

def scanner(image: np.ndarray) -> tuple:
    filtered_image = cv2.bilateralFilter(image, 5, 50, 50)
    gray = cv2.cvtColor(filtered_image, cv2.COLOR_BGR2GRAY)
    _, binary_image = cv2.threshold(gray, 140, 240, cv2.THRESH_BINARY | cv2.THRESH_OTSU)
    contours, _ = cv2.findContours(binary_image, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    main_row_contours = [contour for contour in contours if cv2.boundingRect(contour)[1] < 7]
    main_column_contours = [contour for contour in contours if cv2.boundingRect(contour)[0] < 7]
    other_contours = [contour for contour in contours if cv2.boundingRect(contour)[0] > 5 and cv2.boundingRect(contour)[1] > 7]
    return other_contours, main_column_contours, main_row_contours

def cell_marker(image, cells):
  marked_img = image.copy()

  for contour in cells:
      x, y, w, h = cv2.boundingRect(contour)
      cv2.rectangle(marked_img, (x, y), (x + w, y + h), (40, 50, 255), 2)
#   cv2_imshow(marked_img)

def find_marked_cells(image, contours):
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    enhanced_image = cv2.convertScaleAbs(
        gray, alpha=0.8, beta=5
    )
    sharpened_image = cv2.filter2D(enhanced_image, -1, np.array([[-1, -1, -1], [-1, 11, -1], [-1, -1, -1]]))
    marked_cells = []
    for contour in contours:
        x, y, w, h = cv2.boundingRect(contour)
        roi = sharpened_image[y : y + h, x : x + w]
        mean_intensity = np.mean(roi)
        if mean_intensity < 240:
            x, y, w, h = cv2.boundingRect(contour)
            center_x = x + w // 2
            center_y = y + h // 2
            marked_cells.append((center_x, center_y))
    return marked_cells


def remove_similar_contours(contours: list, threshold_distance=19) -> list:
    filtered_contours = []
    for contour in contours:
        x, y, w, h = cv2.boundingRect(contour)
        close_to_existing = False
        for existing_contour in filtered_contours:
            existing_x, existing_y, _, _ = cv2.boundingRect(existing_contour)
            if abs(y - existing_y) < threshold_distance:
                close_to_existing = True
                break
        if not close_to_existing:
            filtered_contours.append(contour)
    return filtered_contours

def remove_angle_cell(main_column_contours, main_row_contours):
  true_main_row_contours = [contour for contour in main_row_contours if cv2.boundingRect(contour)[0] >= 15]
  true_main_column_contours = [contour for contour in main_column_contours if cv2.boundingRect(contour)[1] >= 10]

  true_main_row_contours = sorted(true_main_row_contours, key=lambda contour: cv2.boundingRect(contour)[0])
  true_main_column_contours = sorted(true_main_column_contours, key=lambda contour: cv2.boundingRect(contour)[1])


  true_main_column_contours = [contour for contour in true_main_column_contours if cv2.contourArea(contour) > 90]
  true_main_column_contours = remove_similar_contours(true_main_column_contours)
  true_main_row_contours = [contour for contour in true_main_row_contours if cv2.contourArea(contour) > 90]
  return true_main_column_contours, true_main_row_contours



def find_contour_centers(contours) -> list:
    centers = []
    for contour in contours:
        x, y, w, h = cv2.boundingRect(contour)
        center_x = x + w // 2
        center_y = y + h // 2
        centers.append((center_x, center_y))
    return centers


def find_answer(true_main_row_contours, true_main_column_contours, marked_contours,  qr_info, correct_answers, number_test):
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    first_row_contours_dict = {letter: contour for letter, contour in zip(alphabet, true_main_row_contours)}

    first_column_contours_dict = {
      str(i + 1): contour
      for i, contour in enumerate(true_main_column_contours)
    }
    answer = set()
    for point in marked_contours:
        x_point, y_point = point
        for key_row, value_row in first_column_contours_dict.items():
            x_row, y_row, w_row, h_row = cv2.boundingRect(value_row)
            if y_row <= y_point <= y_row + h_row:
                for key_col, value_col in first_row_contours_dict.items():
                    x_col, y_col, w_col, h_col = cv2.boundingRect(value_col)
                    if x_col <= x_point <= x_col + w_col:
                        answer.add((key_row, key_col))
    result = {"qr_info": qr_info, "answer": [], "total-correct-answers": 0, "total-incorrect-answers": 0, "test_number": number_test}
    for row, col in answer:
        found = False
        for correct_answer in correct_answers:
            if row == correct_answer["question"]:
                correct_answer_value = correct_answer["correct_answer"]
                
                if col in correct_answer_value:
                    result["answer"].append({
                    "question": row,
                    "answer": col,
                    "correct-answer": correct_answer_value
                    })
                    result["total-correct-answers"] += 1
                else:
                    result["total-incorrect-answers"] += 1
                found = True
                
        if not found:
            result["answer"].append({
                "question": row,
                "answer": '',
                "correct-answer": None
            })
            result["total-incorrect-answers"] += 1
    result["answer"].sort(key=lambda x: int(x["question"]))
    return result

def compare_answers(true_answers, provided_answers):
    matching_pairs = 0

    for true_pair in true_answers:
        if true_pair in provided_answers:
            matching_pairs += 1

    percent_match = (matching_pairs / len(true_answers)) * 100

    return percent_match


def build_answer(PATH_TO_IMAGE, correct_answers, number_test):
    initial_table_image, qr_info = initial_processing(PATH_TO_IMAGE)
    table_image = find_table(initial_table_image)
    other_contours, main_column_contours, main_row_contours = scanner(table_image)
    true_main_column_contours, true_main_row_contours = remove_angle_cell(main_column_contours, main_row_contours)
    marked_cells = find_marked_cells(table_image, other_contours)
    ans = find_answer(true_main_row_contours, true_main_column_contours, marked_cells, qr_info, correct_answers, number_test)
    return ans
