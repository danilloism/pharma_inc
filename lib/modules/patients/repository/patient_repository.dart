import 'package:dio/dio.dart';

import '../../core/interfaces/repository.dart';
import '../../core/config/settings.dart';
import '../../core/exceptions/custom_http_exception.dart';
import '../model/patient_model.dart';

class PatientRepository implements Repository {
  final _dioClient = Dio();

  @override
  Future<List<PatientModel>> get(int from, int to) async {
    try {
      final res = await _dioClient.get(Settings.apiUrl);

      if (res.statusCode == 200) {
        return List.unmodifiable((res.data as List)
            .map((pacient) => PatientModel.fromJson(pacient)));
      } else {
        throw CustomHttpException(
          code: res.statusCode ?? 400,
          message: res.statusMessage ?? 'Unknown',
        );
      }
    } catch (e) {
      rethrow;
    }
  }
}
