import '../../patients/models/patient_model.dart';

abstract class Repository {
  Future<List<PatientModel>> get(int page);
}
