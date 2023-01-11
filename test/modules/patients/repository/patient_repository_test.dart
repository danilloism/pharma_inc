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
  late Response httpResponse;
  final data =
      jsonDecode(await rootBundle.loadString('assets/mock_response.json'));

  setUpAll(() async {
    httpResponse = Response(
        requestOptions: RequestOptions(path: ''), data: data, statusCode: 200);
  });

  setUp(() async {
    dioMock = DioMock();
    repository = PatientRepository(dioClient: dioMock);
  });

  group('PatientRepository', () {
    group('dioClient', () {
      test('should be instanciated.', () {
        expect(repository.dioClient, allOf([isA<Dio>(), isNotNull]));
      });
    });

    group('get()', () {
      test('should make only one GET request.', () async {
        when(() => dioMock.get(any(named: 'queryParameters')))
            .thenAnswer((invocation) async => Future.value(httpResponse));
        await repository.get(1);
        verify(() => dioMock.get(any(named: 'queryParameters'))).called(1);
      });

      test('should return a List<PatientModel> object of size 50.', () async {
        when(() => dioMock.get(any(named: 'queryParameters')))
            .thenAnswer((invocation) async => Future.value(httpResponse));
        final patients = await repository.get(1);
        expect(patients, isA<List<Patient>>());
        expect(patients, isNotEmpty);
        expect(patients, isNotNull);
        expect(patients.length, equals(50));
      });

      test('should throw a CustomHttpException if status code is not 200.',
          () async {
        httpResponse.statusCode = 400;
        httpResponse.statusMessage = 'Bad Request';
        httpResponse.data = null;

        when(() => dioMock.get(any(named: 'queryParameters')))
            .thenAnswer((invocation) async => Future.value(httpResponse));

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
                    equals('Bad Request')),
          ),
        );
      });
    });
  });
}
