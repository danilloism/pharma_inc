import 'package:pharma_inc/modules/patients/models/address..dart';
import 'package:pharma_inc/modules/patients/models/id.dart';
import 'package:pharma_inc/modules/patients/models/name.dart';

import '../../core/helpers/common.dart';

class Patient {
  final Id id;
  final Name _name;
  final String picture;
  final String email;
  final String gender;
  final DateTime dayOfBirth;
  final String phone;
  final String nationality;
  final Address address;

  String get name => _name.toString();
  int get age => DateTime.now().year - dayOfBirth.year;

  const Patient({
    required this.id,
    required Name name,
    required this.picture,
    required this.email,
    required this.gender,
    required this.dayOfBirth,
    required this.phone,
    required this.nationality,
    required this.address,
  }) : _name = name;

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
        id: Id.fromJson(json['id']),
        name: Name.fromJson(json['name']),
        picture: json['picture']['large'],
        email: json['email'],
        gender: (json['gender'] as String).capitalized,
        dayOfBirth: DateTime.parse(json['dob']['date']),
        phone: json['phone'],
        nationality: json['nat'],
        address: Address.fromJson(json['location']),
      );
}
