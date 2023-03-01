import 'package:pharma_inc/gender.dart';
import 'package:pharma_inc/models/address.dart';
import 'package:pharma_inc/models/day_of_birth.dart';
import 'package:pharma_inc/models/id.dart';
import 'package:pharma_inc/models/name.dart';
import 'package:pharma_inc/nationality.dart';

class Patient {
  final Id id;
  final Name _name;
  final String picture;
  final String email;
  final Gender gender;
  final DayOfBirth dob;
  final String phone;
  final Nationality nationality;
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
      gender: Gender.values
          .singleWhere((gender) => gender.name == (json['gender'] as String)),
      dob: DayOfBirth.fromJson(json['dob']),
      phone: json['phone'],
      nationality: Nationality.fromString(json['nat']),
      address: Address.fromJson(json['location']),
    );
  }
}
