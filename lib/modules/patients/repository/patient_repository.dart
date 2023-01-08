import 'package:dio/dio.dart';

import '../../core/config/settings.dart';
import '../../core/exceptions/custom_http_exception.dart';
import '../../core/interfaces/repository.dart';
import '../models/patient.dart';

class PatientRepository implements Repository {
  PatientRepository({required this.dioClient});

  final Dio dioClient;

  @override
  Future<List<Patient>> get(int page) async {
    try {
      final queryParams =
          '?page=$page&results=50&seed=dnn&exc=login,registered,cell';
      final res = await dioClient.get('${Settings.apiUrl}$queryParams');

      if (res.statusCode == 200) {
        return List.unmodifiable((res.data['results'] as List)
            .map((pacient) => Patient.fromJson(pacient)));
      } else {
        throw CustomHttpException(
          code: res.statusCode!,
          message: res.statusMessage!,
        );
      }
    } catch (e) {
      rethrow;
    }
  }
}
