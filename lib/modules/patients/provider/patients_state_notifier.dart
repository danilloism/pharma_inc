part of 'patients_provider.dart';

class PatientsNotifier extends StateNotifier<PatientsState> {
  PatientsNotifier({required Repository patientsRepository})
      : _patientsRepository = patientsRepository,
        _requestPage = 1,
        super(PatientsState.initial);

  final Repository _patientsRepository;
  final List<PatientModel> _currentPatients = [];
  int _requestPage;

  List<PatientModel> get currentPatients => List.unmodifiable(_currentPatients);
  int get currentPage => _requestPage - 1;

  Future<void> getPatients() async {
    state = PatientsState.loading;

    try {
      _currentPatients.addAll(await _patientsRepository.get(_requestPage));
      _requestPage++;
      state = PatientsState.done;
    } catch (e) {
      state = PatientsState.error;
      rethrow;
    }
  }
}
