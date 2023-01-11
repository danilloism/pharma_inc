part of 'patients_provider.dart';

class PatientsNotifier extends StateNotifier<PatientsState> {
  PatientsNotifier({required Repository patientsRepository})
      : _patientsRepository = patientsRepository,
        super(PatientsState.initial);

  final Repository _patientsRepository;
  final List<Patient> _loadedPatients = [];
  int _requestPage = 0;
  final _streamController = StreamController<List<Patient>>();

  List<Patient> get currentPatients => List.unmodifiable(_loadedPatients);

  int get currentPage => _requestPage;
  Stream<List<Patient>> get patientsStream => _streamController.stream;

  Future<void> loadPatients() async {
    state = _loadedPatients.isEmpty
        ? PatientsState.loading
        : PatientsState.refreshing;

    try {
      _requestPage++;
      final patients = await _patientsRepository.get(_requestPage);
      _loadedPatients.addAll(patients); //TODO: resolver isso aqui
      _streamController.sink.add(patients);

      state = PatientsState.done;
    } catch (e) {
      state = PatientsState.error;
      _requestPage--;
      rethrow;
    }
  }

  @override
  void dispose() async {
    await _streamController.sink.close();
    await _streamController.close();
    super.dispose();
  }
}
