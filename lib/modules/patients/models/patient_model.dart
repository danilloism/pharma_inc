import 'package:pharma_inc/modules/patients/models/address_model.dart';
import 'package:pharma_inc/modules/patients/models/id_model.dart';
import 'package:pharma_inc/modules/patients/models/name_model.dart';

import '../../core/helpers/common.dart';

class PatientModel {
  final IdModel id;
  final NameModel _name;
  final String picture;
  final String email;
  final String gender;
  final DateTime dayOfBirth;
  final String phone;
  final String nationality;
  final AddressModel address;

  String get name => _name.toString();

  const PatientModel({
    required this.id,
    required NameModel name,
    required this.picture,
    required this.email,
    required this.gender,
    required this.dayOfBirth,
    required this.phone,
    required this.nationality,
    required this.address,
  }) : _name = name;

  factory PatientModel.fromJson(Map<String, dynamic> json) => PatientModel(
        id: IdModel.fromJson(json['id']),
        name: NameModel.fromJson(json['name']),
        picture: json['picture']['large'],
        email: json['email'],
        gender: (json['gender'] as String).capitalized,
        dayOfBirth: DateTime.parse(json['dob']['date']),
        phone: json['phone'],
        nationality: json['nat'],
        address: AddressModel.fromJson(json['location']),
      );
}
