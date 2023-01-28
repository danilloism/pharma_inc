import 'package:flutter/cupertino.dart';
import 'package:pharma_inc/models/patient.dart';
import 'package:pharma_inc/repository/repository.dart';

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
