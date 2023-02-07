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
  Gender? get val => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender? val) genderFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender? val)? genderFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender? val)? genderFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenderFilterChanged value) genderFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderFilterChanged value)? genderFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderFilterChanged value)? genderFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterEventCopyWith<FilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res, FilterEvent>;
  @useResult
  $Res call({Gender? val});
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res, $Val extends FilterEvent>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_value.copyWith(
      val: freezed == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenderFilterChangedCopyWith<$Res>
    implements $FilterEventCopyWith<$Res> {
  factory _$$GenderFilterChangedCopyWith(_$GenderFilterChanged value,
          $Res Function(_$GenderFilterChanged) then) =
      __$$GenderFilterChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Gender? val});
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
    Object? val = freezed,
  }) {
    return _then(_$GenderFilterChanged(
      freezed == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc

class _$GenderFilterChanged implements GenderFilterChanged {
  const _$GenderFilterChanged(this.val);

  @override
  final Gender? val;

  @override
  String toString() {
    return 'FilterEvent.genderFilterChanged(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderFilterChanged &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderFilterChangedCopyWith<_$GenderFilterChanged> get copyWith =>
      __$$GenderFilterChangedCopyWithImpl<_$GenderFilterChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender? val) genderFilterChanged,
  }) {
    return genderFilterChanged(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender? val)? genderFilterChanged,
  }) {
    return genderFilterChanged?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender? val)? genderFilterChanged,
    required TResult orElse(),
  }) {
    if (genderFilterChanged != null) {
      return genderFilterChanged(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenderFilterChanged value) genderFilterChanged,
  }) {
    return genderFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderFilterChanged value)? genderFilterChanged,
  }) {
    return genderFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderFilterChanged value)? genderFilterChanged,
    required TResult orElse(),
  }) {
    if (genderFilterChanged != null) {
      return genderFilterChanged(this);
    }
    return orElse();
  }
}

abstract class GenderFilterChanged implements FilterEvent {
  const factory GenderFilterChanged(final Gender? val) = _$GenderFilterChanged;

  @override
  Gender? get val;
  @override
  @JsonKey(ignore: true)
  _$$GenderFilterChangedCopyWith<_$GenderFilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
