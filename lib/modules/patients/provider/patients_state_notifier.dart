part of 'patients_provider.dart';

class _PatientsNotifier extends StateNotifier<PatientsState> {
  _PatientsNotifier(
      {required Repository patientsRepository,
      required _JumpNotifier jumpNotifier})
      : _patientsRepository = patientsRepository,
        _jumpState = jumpNotifier,
        super(PatientsState.initial);

  final Repository _patientsRepository;
  List<PatientModel> _currentPatients = [];
  final _JumpNotifier _jumpState;

  List<PatientModel> get currentPatients => List.unmodifiable(_currentPatients);

  Future<void> getPatients() async {
    state = PatientsState.loading;
    final from = _jumpState.from;
    final to = _jumpState.to;

    try {
      _currentPatients = await _patientsRepository.get(from, to);
      _jumpState.refresh();
      state = PatientsState.done;
    } catch (e) {
      rethrow;
    }
  }
}
