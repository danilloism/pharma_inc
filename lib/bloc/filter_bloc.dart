import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_inc/bloc/events/filter_event.dart';
import 'package:pharma_inc/bloc/state/filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc([FilterState? initState])
      : super(initState ?? const FilterState()) {
    on<GenderFilterChanged>(
        (event, emit) => emit(state.copyWith(gender: event.gender)));

    on<SearchTextChanged>(
      (event, emit) {
        var text = event.text;

        if (text != null && text.isEmpty) {
          text = null;
        }

        emit(state.copyWith(searchText: text));
      },
      transformer: sequential(),
    );

    on<NationalitiesFilterChanged>((event, emit) {
      var nationalities = event.nationalities;

      if (nationalities != null && nationalities.isEmpty) {
        nationalities = null;
      }

      emit(state.copyWith(nationalities: nationalities));
    });
  }
}
