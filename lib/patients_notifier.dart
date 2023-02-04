import 'package:flutter/cupertino.dart';
import 'package:pharma_inc/models/patient.dart';
import 'package:pharma_inc/repository/repository.dart';
import 'package:pharma_inc/state/patients_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patients_notifier.g.dart';

class PatientsNotifier extends ValueNotifier<List<Patient>> {
  final Repository _repo;

  PatientsNotifier._(this._repo) : super([]);

  var _requestPage = 0;

  Future<void> loadOrRefreshData() async {
    final patients = await _repo.get(_requestPage);
    value.addAll(patients);
    _requestPage++;
    notifyListeners();
  }

  static Future<PatientsNotifier> init(Repository repo) async {
    final instance = PatientsNotifier._(repo);

    await instance.loadOrRefreshData();

    return instance;
  }
}

@riverpod
class PatientsNotifierR extends _$PatientsNotifierR {
  @override
  PatientsState build(Repository repo) {
    loadOrRefreshData();
    return const PatientsState.loading();
  }

  var _requestPage = 0;

  Future<void> loadOrRefreshData() async {
    try {
      state = PatientsRefreshing(state.patients);
      final result = await repo.get(_requestPage);
      _requestPage++;
      state = PatientsData([...state.patients, ...result]);
    } catch (e) {
      state = PatientsError(patients: state.patients, error: e);
    }
  }
}
