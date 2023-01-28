import 'package:dio/dio.dart';
import 'package:pharma_inc/constants.dart';
import 'package:pharma_inc/exceptions/custom_http_exception.dart';

import '../models/patient.dart';
import 'repository.dart';

class PatientRepository implements Repository {
  PatientRepository({required this.dioClient});

  @override
  final Dio dioClient;

  @override
  Future<List<Patient>> get(int page) async {
    try {
      // final queryParams =
      //     '?page=$page&results=50&seed=dnn&exc=login,registered,cell';
      final res = await dioClient.get(
        apiUrl,
        queryParameters: {
          'page': page,
          'results': 50,
          'seed': 'dnn',
          'exc': ['login', 'registered', 'cell'],
        },
      );

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
