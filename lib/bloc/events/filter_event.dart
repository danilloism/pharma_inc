import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_inc/gender.dart';

part 'filter_event.freezed.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.genderFilterChanged(Gender? val) =
      GenderFilterChanged;
}
