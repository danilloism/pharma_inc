import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_model.freezed.dart';
part 'patient_model.g.dart';

@freezed
class PatientModel with _$PatientModel {
  factory PatientModel({
    required int id,
    required String name,
    required String image,
    required String email,
    required String gender,
    required DateTime birthday,
    required String phone,
    required String nationality,
    required String location,
  }) = _PatientModel;

  factory PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json);
}
