import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pharma_inc/patients_notifier.dart';
import 'package:pharma_inc/repository/patient_repository.dart';
import 'package:pharma_inc/repository/repository.dart';

final it = GetIt.instance;

void setupDiContainer() {
  it.registerFactory<Dio>(() => Dio());

  it.registerFactory<Repository>(() => PatientRepository(dioClient: it()));

  it.registerSingletonAsync<PatientsNotifier>(
    () => PatientsNotifier.init(it()),
    dispose: (param) => param.dispose(),
  );
}
