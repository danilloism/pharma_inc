// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pharma_inc/modules/patients/provider/patients_provider.dart';
import 'package:pharma_inc/modules/patients/repository/patient_repository.dart';
import 'package:pharma_inc/modules/patients/state/patients_state.dart';

class PatientRepositoryMock extends Mock implements PatientRepository {}

main() {
  late PatientsNotifier notifier;
  late PatientRepositoryMock repositoryMock;

  setUp(() {
    repositoryMock = PatientRepositoryMock();
    notifier = PatientsNotifier(patientsRepository: repositoryMock);
  });

  group('PatientsNotifier', () {
    group('on instantiation', () {
      test('should have \'initial\' state and currentPage equal to 0.', () {
        expect(notifier.state, equals(PatientsState.initial));
        expect(notifier.currentPage, equals(0));
      });
    });

    group('getPatients()', () {
      test(
          'should change state, populate currentPatients and increase currentPage value.',
          () async {
        when(() => repositoryMock.get(1))
            .thenAnswer((invocation) => Future.value([]));
        notifier.getPatients().then((value) {
          expect(notifier.state, equals(PatientsState.done));
          expect(notifier.currentPage, equals(1));
        });
        expect(notifier.state, equals(PatientsState.loading));
      });

      test('should change state to \'error\' if Exception happens.', () async {
        when(() => repositoryMock.get(1)).thenThrow(Exception());
        final future = notifier.getPatients();
        expectLater(future, throwsA(isA<Exception>()));
        try {
          await future;
        } catch (e) {
        } finally {
          expect(notifier.state, equals(PatientsState.error));
        }
      });
    });
  });
}
