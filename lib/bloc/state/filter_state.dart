import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_inc/gender.dart';

part 'filter_state.freezed.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({Gender? gender, String? searchText}) =
      _FilterState;
}
