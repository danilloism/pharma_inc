// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientModel _$PatientModelFromJson(Map<String, dynamic> json) {
  return _PatientModel.fromJson(json);
}

/// @nodoc
mixin _$PatientModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientModelCopyWith<PatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientModelCopyWith<$Res> {
  factory $PatientModelCopyWith(
          PatientModel value, $Res Function(PatientModel) then) =
      _$PatientModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String image,
      String email,
      String gender,
      DateTime birthday,
      String phone,
      String nationality,
      String location});
}

/// @nodoc
class _$PatientModelCopyWithImpl<$Res> implements $PatientModelCopyWith<$Res> {
  _$PatientModelCopyWithImpl(this._value, this._then);

  final PatientModel _value;
  // ignore: unused_field
  final $Res Function(PatientModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? phone = freezed,
    Object? nationality = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PatientModelCopyWith<$Res>
    implements $PatientModelCopyWith<$Res> {
  factory _$$_PatientModelCopyWith(
          _$_PatientModel value, $Res Function(_$_PatientModel) then) =
      __$$_PatientModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String image,
      String email,
      String gender,
      DateTime birthday,
      String phone,
      String nationality,
      String location});
}

/// @nodoc
class __$$_PatientModelCopyWithImpl<$Res>
    extends _$PatientModelCopyWithImpl<$Res>
    implements _$$_PatientModelCopyWith<$Res> {
  __$$_PatientModelCopyWithImpl(
      _$_PatientModel _value, $Res Function(_$_PatientModel) _then)
      : super(_value, (v) => _then(v as _$_PatientModel));

  @override
  _$_PatientModel get _value => super._value as _$_PatientModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? phone = freezed,
    Object? nationality = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_PatientModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientModel implements _PatientModel {
  _$_PatientModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.email,
      required this.gender,
      required this.birthday,
      required this.phone,
      required this.nationality,
      required this.location});

  factory _$_PatientModel.fromJson(Map<String, dynamic> json) =>
      _$$_PatientModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String email;
  @override
  final String gender;
  @override
  final DateTime birthday;
  @override
  final String phone;
  @override
  final String nationality;
  @override
  final String location;

  @override
  String toString() {
    return 'PatientModel(id: $id, name: $name, image: $image, email: $email, gender: $gender, birthday: $birthday, phone: $phone, nationality: $nationality, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.nationality, nationality) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(nationality),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_PatientModelCopyWith<_$_PatientModel> get copyWith =>
      __$$_PatientModelCopyWithImpl<_$_PatientModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientModelToJson(this);
  }
}

abstract class _PatientModel implements PatientModel {
  factory _PatientModel(
      {required final int id,
      required final String name,
      required final String image,
      required final String email,
      required final String gender,
      required final DateTime birthday,
      required final String phone,
      required final String nationality,
      required final String location}) = _$_PatientModel;

  factory _PatientModel.fromJson(Map<String, dynamic> json) =
      _$_PatientModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  DateTime get birthday => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get nationality => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PatientModelCopyWith<_$_PatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
