import 'package:pharma_inc/models/address.dart';
import 'package:pharma_inc/models/day_of_birth.dart';
import 'package:pharma_inc/models/id.dart';
import 'package:pharma_inc/models/name.dart';

extension on String {
  String get capitalized =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
}

class Patient {
  final Id id;
  final Name _name;
  final String picture;
  final String email;
  final String gender;
  final DayOfBirth dob;
  final String phone;
  final String nationality;
  final Address address;

  String get name => _name.toString();

  const Patient({
    required this.id,
    required Name name,
    required this.picture,
    required this.email,
    required this.gender,
    required this.dob,
    required this.phone,
    required this.nationality,
    required this.address,
  }) : _name = name;

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      id: Id.fromJson(json['id']),
      name: Name.fromJson(json['name']),
      picture: json['picture']['large'],
      email: json['email'],
      gender: (json['gender'] as String).capitalized,
      dob: DayOfBirth.fromJson(json['dob']),
      phone: json['phone'],
      nationality: json['nat'],
      address: Address.fromJson(json['location']),
    );
  }
}
