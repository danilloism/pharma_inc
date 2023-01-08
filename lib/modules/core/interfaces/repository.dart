import '../../patients/models/patient.dart';

abstract class Repository {
  Future<List<Patient>> get(int page);
}
