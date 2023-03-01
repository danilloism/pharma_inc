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
        try {
          final patients = await repo.get(_requestPage);
          _requestPage++;
          emit(PatientsData(_totalPatients..addAll(patients)));
        } catch (e) {
          emit(PatientsError(patients: _totalPatients, error: e));
        }

        await emit.forEach<FilterState>(
          filters,
          onData: (filter) {
            _currentFilter = filter;
            return PatientsData(_filteredPatients);
          },
        );
      },
    );
    on<ScrollHasReachedMax>(
      (event, emit) async {
        emit(PatientsRefreshing(state.patients));

        try {
          final patients = await repo.get(_requestPage);
          _requestPage++;

          _totalPatients.addAll(patients);

          emit(PatientsData(_filteredPatients));
        } catch (e) {
          emit(PatientsError(patients: state.patients, error: e));
        }
      },
    );
  }

  var _currentFilter = const FilterState();
  final _totalPatients = <Patient>[];
  var _requestPage = 1;

  List<Patient> get _filteredPatients {
    final gender = _currentFilter.gender;
    final searchText = _currentFilter.searchText;
    var filteredPatients = [..._totalPatients];

    if (gender != null) {
      filteredPatients = filteredPatients
          .where((element) => element.gender == gender)
          .toList();
    }

    if (searchText != null) {
      filteredPatients = filteredPatients
          .where((element) =>
              element.name.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    }

    return filteredPatients;
  }
}
