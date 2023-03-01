import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_inc/models/patient.dart';

part 'patients_state.freezed.dart';

@freezed
class PatientsState with _$PatientsState {
  const PatientsState._();

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
  const factory PatientsState.refreshError({
    required List<Patient> patients,
    Object? error,
    Object? stackTrace,
  }) = PatientsRefreshError;
  const factory PatientsState.retryLoading(
      {@Default([]) List<Patient> patients}) = PatientsRetryLoading;

  bool get isRefreshing =>
      maybeWhen(refreshing: (_) => true, orElse: () => false);

  bool get isError => maybeWhen(
      error: (_, __, ___) => true,
      refreshError: (_, __, ___) => true,
      orElse: () => false);
}
