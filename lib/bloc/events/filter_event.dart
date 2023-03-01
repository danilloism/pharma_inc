import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_inc/gender.dart';
import 'package:pharma_inc/nationality.dart';

part 'filter_event.freezed.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.genderFilterChanged(Gender? gender) =
      GenderFilterChanged;

  const factory FilterEvent.searchTextChanged(String? text) = SearchTextChanged;

  const factory FilterEvent.nationalitiesFilterChanged(
      Set<Nationality>? nationalities) = NationalitiesFilterChanged;
}
