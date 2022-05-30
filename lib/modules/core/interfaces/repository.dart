import '../../patients/model/patient_model.dart';

abstract class Repository {
  Future<List<PatientModel>> get(int from, int to);
}
