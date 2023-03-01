import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pharma_inc/bloc/events/filter_event.dart';
import 'package:pharma_inc/bloc/filter_bloc.dart';
import 'package:pharma_inc/bloc/state/filter_state.dart';
import 'package:pharma_inc/gender.dart';

main() {
  group('FilterBloc', () {
    blocTest(
      'emits [] if there\'s no event triggered on filters yet',
      build: () => FilterBloc(),
      expect: () => [],
    );

    blocTest(
      'emits a filter with specified gender',
      build: () => FilterBloc(),
      act: (FilterBloc bloc) =>
          bloc.add(const GenderFilterChanged(Gender.female)),
      expect: () => [const FilterState(gender: Gender.female)],
    );

    blocTest(
      'emits a empty filter if gender is null',
      build: () => FilterBloc(),
      act: (FilterBloc bloc) => bloc.add(const GenderFilterChanged(null)),
      expect: () => [const FilterState()],
    );

    blocTest(
      'emits a sequence of filters with specified search text',
      build: () => FilterBloc(),
      act: (FilterBloc bloc) => bloc
        ..add(const SearchTextChanged('t'))
        ..add(const SearchTextChanged('te'))
        ..add(const SearchTextChanged('tes'))
        ..add(const SearchTextChanged('test')),
      expect: () => [
        const FilterState(searchText: 't'),
        const FilterState(searchText: 'te'),
        const FilterState(searchText: 'tes'),
        const FilterState(searchText: 'test'),
      ],
    );

    blocTest(
      'emits an empty filter if search text is empty',
      build: () => FilterBloc(),
      act: (FilterBloc bloc) => bloc.add(const SearchTextChanged('')),
      expect: () => [const FilterState()],
    );

    blocTest(
      'emits an empty filter if search text is null',
      build: () => FilterBloc(),
      act: (FilterBloc bloc) => bloc.add(const SearchTextChanged(null)),
      expect: () => [const FilterState()],
    );
  });
}
