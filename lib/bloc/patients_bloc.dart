import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_inc/bloc/events/patients_list_event.dart';
import 'package:pharma_inc/bloc/state/filter_state.dart';
import 'package:pharma_inc/bloc/state/patients_state.dart';
import 'package:pharma_inc/models/patient.dart';
import 'package:pharma_inc/repository/repository.dart';

class PatientsBloc extends Bloc<PatientsListEvent, PatientsState> {
  final Repository repo;

  PatientsBloc({required this.repo, required Stream<FilterState> filters})
      : super(const PatientsLoading()) {
    on<AppInitialized>(
      (event, emit) async {
        final patients = await repo.get(_requestPage);
        _requestPage++;
        emit(PatientsData(_totalPatients..addAll(patients)));

        await emit.forEach<FilterState>(
          filters,
          onData: (data) {
            _currentFilter = data;
            return PatientsData(_filteredPatients);
          },
        );
      },
    );
    on<ScrollHasReachedMax>(
      (event, emit) async {
        emit(PatientsRefreshing(state.patients));

        final patients = await repo.get(_requestPage);
        _requestPage++;

        _totalPatients.addAll(patients);

        emit(PatientsData(_filteredPatients));
      },
    );
  }

  var _currentFilter = const FilterState();
  final _totalPatients = <Patient>[];
  var _requestPage = 1;

  List<Patient> get _filteredPatients {
    final gender = _currentFilter.gender;
    final searchText = _currentFilter.searchText;
    final patientsToFilter = [..._totalPatients];

    if (gender == null && searchText == null) {
      return patientsToFilter;
    }

    final List<Patient> filteredByGender = gender == null
        ? patientsToFilter
        : patientsToFilter
            .where((element) => element.gender == gender)
            .toList();

    final List<Patient> filteredByName = searchText == null
        ? filteredByGender
        : filteredByGender
            .where((element) =>
                element.name.toLowerCase().contains(searchText.toLowerCase()))
            .toList();

    return filteredByName;
  }
}
