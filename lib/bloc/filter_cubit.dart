import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_inc/bloc/state/filter_state.dart';
import 'package:pharma_inc/gender.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit([FilterState? initState])
      : super(initState ?? const FilterState());

  void changeGenderFilter(Gender? val) {
    emit(state.copyWith(gender: val));
  }
}
