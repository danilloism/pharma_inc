// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patients_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientsState {
  List<Patient> get patients => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Patient> patients) loading,
    required TResult Function(List<Patient> patients) data,
    required TResult Function(List<Patient> patients) refreshing,
    required TResult Function(
            List<Patient> patients, Object? error, Object? stackTrace)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Patient> patients)? loading,
    TResult? Function(List<Patient> patients)? data,
    TResult? Function(List<Patient> patients)? refreshing,
    TResult? Function(
            List<Patient> patients, Object? error, Object? stackTrace)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Patient> patients)? loading,
    TResult Function(List<Patient> patients)? data,
    TResult Function(List<Patient> patients)? refreshing,
    TResult Function(List<Patient> patients, Object? error, Object? stackTrace)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsLoading value) loading,
    required TResult Function(PatientsData value) data,
    required TResult Function(PatientsRefreshing value) refreshing,
    required TResult Function(PatientsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsLoading value)? loading,
    TResult? Function(PatientsData value)? data,
    TResult? Function(PatientsRefreshing value)? refreshing,
    TResult? Function(PatientsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsLoading value)? loading,
    TResult Function(PatientsData value)? data,
    TResult Function(PatientsRefreshing value)? refreshing,
    TResult Function(PatientsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientsStateCopyWith<PatientsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientsStateCopyWith<$Res> {
  factory $PatientsStateCopyWith(
          PatientsState value, $Res Function(PatientsState) then) =
      _$PatientsStateCopyWithImpl<$Res, PatientsState>;
  @useResult
  $Res call({List<Patient> patients});
}

/// @nodoc
class _$PatientsStateCopyWithImpl<$Res, $Val extends PatientsState>
    implements $PatientsStateCopyWith<$Res> {
  _$PatientsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patients = null,
  }) {
    return _then(_value.copyWith(
      patients: null == patients
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientsLoadingCopyWith<$Res>
    implements $PatientsStateCopyWith<$Res> {
  factory _$$PatientsLoadingCopyWith(
          _$PatientsLoading value, $Res Function(_$PatientsLoading) then) =
      __$$PatientsLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Patient> patients});
}

/// @nodoc
class __$$PatientsLoadingCopyWithImpl<$Res>
    extends _$PatientsStateCopyWithImpl<$Res, _$PatientsLoading>
    implements _$$PatientsLoadingCopyWith<$Res> {
  __$$PatientsLoadingCopyWithImpl(
      _$PatientsLoading _value, $Res Function(_$PatientsLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patients = null,
  }) {
    return _then(_$PatientsLoading(
      patients: null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
    ));
  }
}

/// @nodoc

class _$PatientsLoading extends PatientsLoading {
  const _$PatientsLoading({final List<Patient> patients = const []})
      : _patients = patients,
        super._();

  final List<Patient> _patients;
  @override
  @JsonKey()
  List<Patient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  String toString() {
    return 'PatientsState.loading(patients: $patients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsLoading &&
            const DeepCollectionEquality().equals(other._patients, _patients));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_patients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientsLoadingCopyWith<_$PatientsLoading> get copyWith =>
      __$$PatientsLoadingCopyWithImpl<_$PatientsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Patient> patients) loading,
    required TResult Function(List<Patient> patients) data,
    required TResult Function(List<Patient> patients) refreshing,
    required TResult Function(
            List<Patient> patients, Object? error, Object? stackTrace)
        error,
  }) {
    return loading(patients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Patient> patients)? loading,
    TResult? Function(List<Patient> patients)? data,
    TResult? Function(List<Patient> patients)? refreshing,
    TResult? Function(
            List<Patient> patients, Object? error, Object? stackTrace)?
        error,
  }) {
    return loading?.call(patients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Patient> patients)? loading,
    TResult Function(List<Patient> patients)? data,
    TResult Function(List<Patient> patients)? refreshing,
    TResult Function(List<Patient> patients, Object? error, Object? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(patients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsLoading value) loading,
    required TResult Function(PatientsData value) data,
    required TResult Function(PatientsRefreshing value) refreshing,
    required TResult Function(PatientsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsLoading value)? loading,
    TResult? Function(PatientsData value)? data,
    TResult? Function(PatientsRefreshing value)? refreshing,
    TResult? Function(PatientsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsLoading value)? loading,
    TResult Function(PatientsData value)? data,
    TResult Function(PatientsRefreshing value)? refreshing,
    TResult Function(PatientsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PatientsLoading extends PatientsState {
  const factory PatientsLoading({final List<Patient> patients}) =
      _$PatientsLoading;
  const PatientsLoading._() : super._();

  @override
  List<Patient> get patients;
  @override
  @JsonKey(ignore: true)
  _$$PatientsLoadingCopyWith<_$PatientsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PatientsDataCopyWith<$Res>
    implements $PatientsStateCopyWith<$Res> {
  factory _$$PatientsDataCopyWith(
          _$PatientsData value, $Res Function(_$PatientsData) then) =
      __$$PatientsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Patient> patients});
}

/// @nodoc
class __$$PatientsDataCopyWithImpl<$Res>
    extends _$PatientsStateCopyWithImpl<$Res, _$PatientsData>
    implements _$$PatientsDataCopyWith<$Res> {
  __$$PatientsDataCopyWithImpl(
      _$PatientsData _value, $Res Function(_$PatientsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patients = null,
  }) {
    return _then(_$PatientsData(
      null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
    ));
  }
}

/// @nodoc

class _$PatientsData extends PatientsData {
  const _$PatientsData(final List<Patient> patients)
      : _patients = patients,
        super._();

  final List<Patient> _patients;
  @override
  List<Patient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  String toString() {
    return 'PatientsState.data(patients: $patients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsData &&
            const DeepCollectionEquality().equals(other._patients, _patients));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_patients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientsDataCopyWith<_$PatientsData> get copyWith =>
      __$$PatientsDataCopyWithImpl<_$PatientsData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Patient> patients) loading,
    required TResult Function(List<Patient> patients) data,
    required TResult Function(List<Patient> patients) refreshing,
    required TResult Function(
            List<Patient> patients, Object? error, Object? stackTrace)
        error,
  }) {
    return data(patients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Patient> patients)? loading,
    TResult? Function(List<Patient> patients)? data,
    TResult? Function(List<Patient> patients)? refreshing,
    TResult? Function(
            List<Patient> patients, Object? error, Object? stackTrace)?
        error,
  }) {
    return data?.call(patients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Patient> patients)? loading,
    TResult Function(List<Patient> patients)? data,
    TResult Function(List<Patient> patients)? refreshing,
    TResult Function(List<Patient> patients, Object? error, Object? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(patients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsLoading value) loading,
    required TResult Function(PatientsData value) data,
    required TResult Function(PatientsRefreshing value) refreshing,
    required TResult Function(PatientsError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsLoading value)? loading,
    TResult? Function(PatientsData value)? data,
    TResult? Function(PatientsRefreshing value)? refreshing,
    TResult? Function(PatientsError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsLoading value)? loading,
    TResult Function(PatientsData value)? data,
    TResult Function(PatientsRefreshing value)? refreshing,
    TResult Function(PatientsError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class PatientsData extends PatientsState {
  const factory PatientsData(final List<Patient> patients) = _$PatientsData;
  const PatientsData._() : super._();

  @override
  List<Patient> get patients;
  @override
  @JsonKey(ignore: true)
  _$$PatientsDataCopyWith<_$PatientsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PatientsRefreshingCopyWith<$Res>
    implements $PatientsStateCopyWith<$Res> {
  factory _$$PatientsRefreshingCopyWith(_$PatientsRefreshing value,
          $Res Function(_$PatientsRefreshing) then) =
      __$$PatientsRefreshingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Patient> patients});
}

/// @nodoc
class __$$PatientsRefreshingCopyWithImpl<$Res>
    extends _$PatientsStateCopyWithImpl<$Res, _$PatientsRefreshing>
    implements _$$PatientsRefreshingCopyWith<$Res> {
  __$$PatientsRefreshingCopyWithImpl(
      _$PatientsRefreshing _value, $Res Function(_$PatientsRefreshing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patients = null,
  }) {
    return _then(_$PatientsRefreshing(
      null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
    ));
  }
}

/// @nodoc

class _$PatientsRefreshing extends PatientsRefreshing {
  const _$PatientsRefreshing(final List<Patient> patients)
      : _patients = patients,
        super._();

  final List<Patient> _patients;
  @override
  List<Patient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  String toString() {
    return 'PatientsState.refreshing(patients: $patients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsRefreshing &&
            const DeepCollectionEquality().equals(other._patients, _patients));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_patients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientsRefreshingCopyWith<_$PatientsRefreshing> get copyWith =>
      __$$PatientsRefreshingCopyWithImpl<_$PatientsRefreshing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Patient> patients) loading,
    required TResult Function(List<Patient> patients) data,
    required TResult Function(List<Patient> patients) refreshing,
    required TResult Function(
            List<Patient> patients, Object? error, Object? stackTrace)
        error,
  }) {
    return refreshing(patients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Patient> patients)? loading,
    TResult? Function(List<Patient> patients)? data,
    TResult? Function(List<Patient> patients)? refreshing,
    TResult? Function(
            List<Patient> patients, Object? error, Object? stackTrace)?
        error,
  }) {
    return refreshing?.call(patients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Patient> patients)? loading,
    TResult Function(List<Patient> patients)? data,
    TResult Function(List<Patient> patients)? refreshing,
    TResult Function(List<Patient> patients, Object? error, Object? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(patients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsLoading value) loading,
    required TResult Function(PatientsData value) data,
    required TResult Function(PatientsRefreshing value) refreshing,
    required TResult Function(PatientsError value) error,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsLoading value)? loading,
    TResult? Function(PatientsData value)? data,
    TResult? Function(PatientsRefreshing value)? refreshing,
    TResult? Function(PatientsError value)? error,
  }) {
    return refreshing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsLoading value)? loading,
    TResult Function(PatientsData value)? data,
    TResult Function(PatientsRefreshing value)? refreshing,
    TResult Function(PatientsError value)? error,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class PatientsRefreshing extends PatientsState {
  const factory PatientsRefreshing(final List<Patient> patients) =
      _$PatientsRefreshing;
  const PatientsRefreshing._() : super._();

  @override
  List<Patient> get patients;
  @override
  @JsonKey(ignore: true)
  _$$PatientsRefreshingCopyWith<_$PatientsRefreshing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PatientsErrorCopyWith<$Res>
    implements $PatientsStateCopyWith<$Res> {
  factory _$$PatientsErrorCopyWith(
          _$PatientsError value, $Res Function(_$PatientsError) then) =
      __$$PatientsErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Patient> patients, Object? error, Object? stackTrace});
}

/// @nodoc
class __$$PatientsErrorCopyWithImpl<$Res>
    extends _$PatientsStateCopyWithImpl<$Res, _$PatientsError>
    implements _$$PatientsErrorCopyWith<$Res> {
  __$$PatientsErrorCopyWithImpl(
      _$PatientsError _value, $Res Function(_$PatientsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patients = null,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$PatientsError(
      patients: null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace ? _value.stackTrace : stackTrace,
    ));
  }
}

/// @nodoc

class _$PatientsError extends PatientsError {
  const _$PatientsError(
      {final List<Patient> patients = const [], this.error, this.stackTrace})
      : _patients = patients,
        super._();

  final List<Patient> _patients;
  @override
  @JsonKey()
  List<Patient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  final Object? error;
  @override
  final Object? stackTrace;

  @override
  String toString() {
    return 'PatientsState.error(patients: $patients, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsError &&
            const DeepCollectionEquality().equals(other._patients, _patients) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_patients),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientsErrorCopyWith<_$PatientsError> get copyWith =>
      __$$PatientsErrorCopyWithImpl<_$PatientsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Patient> patients) loading,
    required TResult Function(List<Patient> patients) data,
    required TResult Function(List<Patient> patients) refreshing,
    required TResult Function(
            List<Patient> patients, Object? error, Object? stackTrace)
        error,
  }) {
    return error(patients, this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Patient> patients)? loading,
    TResult? Function(List<Patient> patients)? data,
    TResult? Function(List<Patient> patients)? refreshing,
    TResult? Function(
            List<Patient> patients, Object? error, Object? stackTrace)?
        error,
  }) {
    return error?.call(patients, this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Patient> patients)? loading,
    TResult Function(List<Patient> patients)? data,
    TResult Function(List<Patient> patients)? refreshing,
    TResult Function(List<Patient> patients, Object? error, Object? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(patients, this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PatientsLoading value) loading,
    required TResult Function(PatientsData value) data,
    required TResult Function(PatientsRefreshing value) refreshing,
    required TResult Function(PatientsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PatientsLoading value)? loading,
    TResult? Function(PatientsData value)? data,
    TResult? Function(PatientsRefreshing value)? refreshing,
    TResult? Function(PatientsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientsLoading value)? loading,
    TResult Function(PatientsData value)? data,
    TResult Function(PatientsRefreshing value)? refreshing,
    TResult Function(PatientsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PatientsError extends PatientsState {
  const factory PatientsError(
      {final List<Patient> patients,
      final Object? error,
      final Object? stackTrace}) = _$PatientsError;
  const PatientsError._() : super._();

  @override
  List<Patient> get patients;
  Object? get error;
  Object? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$PatientsErrorCopyWith<_$PatientsError> get copyWith =>
      throw _privateConstructorUsedError;
}
