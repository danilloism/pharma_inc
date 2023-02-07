import 'package:freezed_annotation/freezed_annotation.dart';

part 'patients_list_event.freezed.dart';

@freezed
class PatientsListEvent with _$PatientsListEvent {
  const factory PatientsListEvent.appInitialized() = AppInitialized;
  const factory PatientsListEvent.scrollHasReachedMax() = ScrollHasReachedMax;
}
