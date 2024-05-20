import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../clients/test_check_client.dart';
import '../models/test_results_model.dart';
import '../models/test_update_model.dart';

@singleton
class TestCheckService {
  final Dio _client;

  const TestCheckService(@testCheckClient this._client);

  Future<TestResultsModel> sendPhoto({
    required String path,
    required String testId,
  }) async {
    final testNumber = int.parse(testId);
    final fileName = path.split('/').last;
    final data = FormData.fromMap({
      'photo': [
        await MultipartFile.fromFile(
          path,
          filename: fileName,
        )
      ],
    });

    Response<dynamic> response;
    try {
      response = await _client.post<dynamic>(
        '/upload',
        queryParameters: {
          'test_number': testNumber,
        },
        data: data,
      );
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return const TestResultsModel.error(
        message:
            "Oops. It seems the photo didn't turn out very well. Try to take a photo:)",
      );
    }
    final responseData = response.data as Map<String, dynamic>;
    responseData['runtimeType'] = 'results';
    return TestResultsModel.fromJson(response.data as Map<String, dynamic>);
  }

  Future<bool> sendTest(TestUpdateModel model) async {
    final data = model.toJson();

    try {
      await _client.post<dynamic>(
        '/auth',
        data: data,
      );
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return false;
    }
    return true;
  }
}
