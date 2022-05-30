import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_inc/modules/patients/model/patient_model.dart';
import 'package:pharma_inc/modules/patients/repository/patient_repository.dart';

import '../../core/interfaces/repository.dart';
import '../state/patients_state.dart';

part 'patients_state_notifier.dart';
part 'jump_state_notifier.dart';

class PatientsProvider {
  static final _repositoryProvider =
      Provider<Repository>((ref) => PatientRepository());

  static final _jumpProvider = StateNotifierProvider((ref) => _JumpNotifier());

  static final notifier =
      StateNotifierProvider<_PatientsNotifier, PatientsState>((ref) =>
          _PatientsNotifier(
              patientsRepository: ref.watch(_repositoryProvider),
              jumpNotifier: ref.watch(_jumpProvider.notifier)));
}
