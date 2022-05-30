// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientModel _$$_PatientModelFromJson(Map<String, dynamic> json) =>
    _$_PatientModel(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      phone: json['phone'] as String,
      nationality: json['nationality'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$_PatientModelToJson(_$_PatientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'email': instance.email,
      'gender': instance.gender,
      'birthday': instance.birthday.toIso8601String(),
      'phone': instance.phone,
      'nationality': instance.nationality,
      'location': instance.location,
    };
