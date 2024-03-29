// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender? gender) genderFilterChanged,
    required TResult Function(String? text) searchTextChanged,
    required TResult Function(Set<Nationality>? nationalities)
        nationalitiesFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender? gender)? genderFilterChanged,
    TResult? Function(String? text)? searchTextChanged,
    TResult? Function(Set<Nationality>? nationalities)?
        nationalitiesFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender? gender)? genderFilterChanged,
    TResult Function(String? text)? searchTextChanged,
    TResult Function(Set<Nationality>? nationalities)?
        nationalitiesFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenderFilterChanged value) genderFilterChanged,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(NationalitiesFilterChanged value)
        nationalitiesFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderFilterChanged value)? genderFilterChanged,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(NationalitiesFilterChanged value)?
        nationalitiesFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderFilterChanged value)? genderFilterChanged,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(NationalitiesFilterChanged value)?
        nationalitiesFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res, FilterEvent>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res, $Val extends FilterEvent>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenderFilterChangedCopyWith<$Res> {
  factory _$$GenderFilterChangedCopyWith(_$GenderFilterChanged value,
          $Res Function(_$GenderFilterChanged) then) =
      __$$GenderFilterChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Gender? gender});
}

/// @nodoc
class __$$GenderFilterChangedCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$GenderFilterChanged>
    implements _$$GenderFilterChangedCopyWith<$Res> {
  __$$GenderFilterChangedCopyWithImpl(
      _$GenderFilterChanged _value, $Res Function(_$GenderFilterChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
  }) {
    return _then(_$GenderFilterChanged(
      freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc

class _$GenderFilterChanged implements GenderFilterChanged {
  const _$GenderFilterChanged(this.gender);

  @override
  final Gender? gender;

  @override
  String toString() {
    return 'FilterEvent.genderFilterChanged(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderFilterChanged &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderFilterChangedCopyWith<_$GenderFilterChanged> get copyWith =>
      __$$GenderFilterChangedCopyWithImpl<_$GenderFilterChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender? gender) genderFilterChanged,
    required TResult Function(String? text) searchTextChanged,
    required TResult Function(Set<Nationality>? nationalities)
        nationalitiesFilterChanged,
  }) {
    return genderFilterChanged(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender? gender)? genderFilterChanged,
    TResult? Function(String? text)? searchTextChanged,
    TResult? Function(Set<Nationality>? nationalities)?
        nationalitiesFilterChanged,
  }) {
    return genderFilterChanged?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender? gender)? genderFilterChanged,
    TResult Function(String? text)? searchTextChanged,
    TResult Function(Set<Nationality>? nationalities)?
        nationalitiesFilterChanged,
    required TResult orElse(),
  }) {
    if (genderFilterChanged != null) {
      return genderFilterChanged(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenderFilterChanged value) genderFilterChanged,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(NationalitiesFilterChanged value)
        nationalitiesFilterChanged,
  }) {
    return genderFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderFilterChanged value)? genderFilterChanged,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(NationalitiesFilterChanged value)?
        nationalitiesFilterChanged,
  }) {
    return genderFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderFilterChanged value)? genderFilterChanged,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(NationalitiesFilterChanged value)?
        nationalitiesFilterChanged,
    required TResult orElse(),
  }) {
    if (genderFilterChanged != null) {
      return genderFilterChanged(this);
    }
    return orElse();
  }
}

abstract class GenderFilterChanged implements FilterEvent {
  const factory GenderFilterChanged(final Gender? gender) =
      _$GenderFilterChanged;

  Gender? get gender;
  @JsonKey(ignore: true)
  _$$GenderFilterChangedCopyWith<_$GenderFilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchTextChangedCopyWith<$Res> {
  factory _$$SearchTextChangedCopyWith(
          _$SearchTextChanged value, $Res Function(_$SearchTextChanged) then) =
      __$$SearchTextChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? text});
}

/// @nodoc
class __$$SearchTextChangedCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$SearchTextChanged>
    implements _$$SearchTextChangedCopyWith<$Res> {
  __$$SearchTextChangedCopyWithImpl(
      _$SearchTextChanged _value, $Res Function(_$SearchTextChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$SearchTextChanged(
      freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchTextChanged implements SearchTextChanged {
  const _$SearchTextChanged(this.text);

  @override
  final String? text;

  @override
  String toString() {
    return 'FilterEvent.searchTextChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTextChanged &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTextChangedCopyWith<_$SearchTextChanged> get copyWith =>
      __$$SearchTextChangedCopyWithImpl<_$SearchTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender? gender) genderFilterChanged,
    required TResult Function(String? text) searchTextChanged,
    required TResult Function(Set<Nationality>? nationalities)
        nationalitiesFilterChanged,
  }) {
    return searchTextChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender? gender)? genderFilterChanged,
    TResult? Function(String? text)? searchTextChanged,
    TResult? Function(Set<Nationality>? nationalities)?
        nationalitiesFilterChanged,
  }) {
    return searchTextChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender? gender)? genderFilterChanged,
    TResult Function(String? text)? searchTextChanged,
    TResult Function(Set<Nationality>? nationalities)?
        nationalitiesFilterChanged,
    required TResult orElse(),
  }) {
    if (searchTextChanged != null) {
      return searchTextChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenderFilterChanged value) genderFilterChanged,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(NationalitiesFilterChanged value)
        nationalitiesFilterChanged,
  }) {
    return searchTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderFilterChanged value)? genderFilterChanged,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(NationalitiesFilterChanged value)?
        nationalitiesFilterChanged,
  }) {
    return searchTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderFilterChanged value)? genderFilterChanged,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(NationalitiesFilterChanged value)?
        nationalitiesFilterChanged,
    required TResult orElse(),
  }) {
    if (searchTextChanged != null) {
      return searchTextChanged(this);
    }
    return orElse();
  }
}

abstract class SearchTextChanged implements FilterEvent {
  const factory SearchTextChanged(final String? text) = _$SearchTextChanged;

  String? get text;
  @JsonKey(ignore: true)
  _$$SearchTextChangedCopyWith<_$SearchTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NationalitiesFilterChangedCopyWith<$Res> {
  factory _$$NationalitiesFilterChangedCopyWith(
          _$NationalitiesFilterChanged value,
          $Res Function(_$NationalitiesFilterChanged) then) =
      __$$NationalitiesFilterChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<Nationality>? nationalities});
}

/// @nodoc
class __$$NationalitiesFilterChangedCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$NationalitiesFilterChanged>
    implements _$$NationalitiesFilterChangedCopyWith<$Res> {
  __$$NationalitiesFilterChangedCopyWithImpl(
      _$NationalitiesFilterChanged _value,
      $Res Function(_$NationalitiesFilterChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nationalities = freezed,
  }) {
    return _then(_$NationalitiesFilterChanged(
      freezed == nationalities
          ? _value._nationalities
          : nationalities // ignore: cast_nullable_to_non_nullable
              as Set<Nationality>?,
    ));
  }
}

/// @nodoc

class _$NationalitiesFilterChanged implements NationalitiesFilterChanged {
  const _$NationalitiesFilterChanged(final Set<Nationality>? nationalities)
      : _nationalities = nationalities;

  final Set<Nationality>? _nationalities;
  @override
  Set<Nationality>? get nationalities {
    final value = _nationalities;
    if (value == null) return null;
    if (_nationalities is EqualUnmodifiableSetView) return _nationalities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  String toString() {
    return 'FilterEvent.nationalitiesFilterChanged(nationalities: $nationalities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NationalitiesFilterChanged &&
            const DeepCollectionEquality()
                .equals(other._nationalities, _nationalities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nationalities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NationalitiesFilterChangedCopyWith<_$NationalitiesFilterChanged>
      get copyWith => __$$NationalitiesFilterChangedCopyWithImpl<
          _$NationalitiesFilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender? gender) genderFilterChanged,
    required TResult Function(String? text) searchTextChanged,
    required TResult Function(Set<Nationality>? nationalities)
        nationalitiesFilterChanged,
  }) {
    return nationalitiesFilterChanged(nationalities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender? gender)? genderFilterChanged,
    TResult? Function(String? text)? searchTextChanged,
    TResult? Function(Set<Nationality>? nationalities)?
        nationalitiesFilterChanged,
  }) {
    return nationalitiesFilterChanged?.call(nationalities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender? gender)? genderFilterChanged,
    TResult Function(String? text)? searchTextChanged,
    TResult Function(Set<Nationality>? nationalities)?
        nationalitiesFilterChanged,
    required TResult orElse(),
  }) {
    if (nationalitiesFilterChanged != null) {
      return nationalitiesFilterChanged(nationalities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenderFilterChanged value) genderFilterChanged,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(NationalitiesFilterChanged value)
        nationalitiesFilterChanged,
  }) {
    return nationalitiesFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderFilterChanged value)? genderFilterChanged,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(NationalitiesFilterChanged value)?
        nationalitiesFilterChanged,
  }) {
    return nationalitiesFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderFilterChanged value)? genderFilterChanged,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(NationalitiesFilterChanged value)?
        nationalitiesFilterChanged,
    required TResult orElse(),
  }) {
    if (nationalitiesFilterChanged != null) {
      return nationalitiesFilterChanged(this);
    }
    return orElse();
  }
}

abstract class NationalitiesFilterChanged implements FilterEvent {
  const factory NationalitiesFilterChanged(
      final Set<Nationality>? nationalities) = _$NationalitiesFilterChanged;

  Set<Nationality>? get nationalities;
  @JsonKey(ignore: true)
  _$$NationalitiesFilterChangedCopyWith<_$NationalitiesFilterChanged>
      get copyWith => throw _privateConstructorUsedError;
}
