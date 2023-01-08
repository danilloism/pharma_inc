import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/interfaces/repository.dart';
import '../models/patient.dart';
import '../repository/patient_repository.dart';
import '../state/patients_state.dart';

part 'patients_state_notifier.dart';

class PatientsProvider {
  static final _repositoryProvider = Provider<Repository>(
      (ref) => PatientRepository(dioClient: Dio()),
      name: 'Repository Provider');

  static final stateNotifierProvider =
      StateNotifierProvider<PatientsNotifier, PatientsState>(
          (ref) => PatientsNotifier(
              patientsRepository: ref.watch(_repositoryProvider)),
          name: 'Patients Provider');
}
