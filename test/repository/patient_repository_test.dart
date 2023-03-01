import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pharma_inc/exceptions/custom_http_exception.dart';
import 'package:pharma_inc/models/patient.dart';
import 'package:pharma_inc/repository/patient_repository.dart';

class DioMock extends Mock implements Dio {}

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  late PatientRepository repository;
  late DioMock dioMock;
  late Response httpOkResponse;
  late dynamic data;

  dioMockGet() => dioMock.get(
        any(),
        queryParameters: any(named: 'queryParameters'),
      );

  setUpAll(() async {
    final encodedMockResponse =
        await rootBundle.loadString('assets/mock_response.json');

    data = jsonDecode(encodedMockResponse);

    httpOkResponse = Response(
        requestOptions: RequestOptions(path: ''), data: data, statusCode: 200);

    dioMock = DioMock();
    when(dioMockGet).thenAnswer((_) async => Future.value(httpOkResponse));

    repository = PatientRepository(dioClient: dioMock);
  });

  group('PatientRepository', () {
    group('get()', () {
      test('should make only one GET request.', () async {
        await repository.get(1);

        verify(dioMockGet).called(1);
      });

      test('should return a List<PatientModel> object of length 50.', () async {
        final patients = await repository.get(1);

        expect(
          patients,
          isA<List<Patient>>().having(
            (items) => items.length,
            'list length',
            equals(50),
          ),
        );
      });

      test('should throw a CustomHttpException if status code is not 200.',
          () async {
        httpOkResponse.statusCode = 400;
        httpOkResponse.statusMessage = 'Bad Request';
        httpOkResponse.data = null;

        expectLater(
          repository.get(1),
          throwsA(
            isA<CustomHttpException>()
                .having(
                  (e) => e.code,
                  'should throw HttpException with status code.',
                  equals(400),
                )
                .having(
                  (e) => e.message,
                  'should throw HttpException with status message.',
                  isNotEmpty,
                ),
          ),
        );
      });
    });
  });
}
