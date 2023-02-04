import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_inc/models/patient.dart';

part 'patients_state.freezed.dart';

@freezed
class PatientsState with _$PatientsState {
  const factory PatientsState.loading({@Default([]) List<Patient> patients}) =
      PatientsLoading;
  const factory PatientsState.data(List<Patient> patients) = PatientsData;
  const factory PatientsState.refreshing(List<Patient> patients) =
      PatientsRefreshing;
  const factory PatientsState.error({
    @Default([]) List<Patient> patients,
    Object? error,
    Object? stackTrace,
  }) = PatientsError;
}
