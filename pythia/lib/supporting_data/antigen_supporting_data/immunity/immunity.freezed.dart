// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'immunity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Immunity _$ImmunityFromJson(Map<String, dynamic> json) {
  return _Immunity.fromJson(json);
}

/// @nodoc
mixin _$Immunity {
  List<ClinicalHistory>? get clinicalHistory =>
      throw _privateConstructorUsedError;
  DateOfBirth? get dateOfBirth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImmunityCopyWith<Immunity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImmunityCopyWith<$Res> {
  factory $ImmunityCopyWith(Immunity value, $Res Function(Immunity) then) =
      _$ImmunityCopyWithImpl<$Res, Immunity>;
  @useResult
  $Res call({List<ClinicalHistory>? clinicalHistory, DateOfBirth? dateOfBirth});

  $DateOfBirthCopyWith<$Res>? get dateOfBirth;
}

/// @nodoc
class _$ImmunityCopyWithImpl<$Res, $Val extends Immunity>
    implements $ImmunityCopyWith<$Res> {
  _$ImmunityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clinicalHistory = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_value.copyWith(
      clinicalHistory: freezed == clinicalHistory
          ? _value.clinicalHistory
          : clinicalHistory // ignore: cast_nullable_to_non_nullable
              as List<ClinicalHistory>?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateOfBirthCopyWith<$Res>? get dateOfBirth {
    if (_value.dateOfBirth == null) {
      return null;
    }

    return $DateOfBirthCopyWith<$Res>(_value.dateOfBirth!, (value) {
      return _then(_value.copyWith(dateOfBirth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImmunityCopyWith<$Res> implements $ImmunityCopyWith<$Res> {
  factory _$$_ImmunityCopyWith(
          _$_Immunity value, $Res Function(_$_Immunity) then) =
      __$$_ImmunityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ClinicalHistory>? clinicalHistory, DateOfBirth? dateOfBirth});

  @override
  $DateOfBirthCopyWith<$Res>? get dateOfBirth;
}

/// @nodoc
class __$$_ImmunityCopyWithImpl<$Res>
    extends _$ImmunityCopyWithImpl<$Res, _$_Immunity>
    implements _$$_ImmunityCopyWith<$Res> {
  __$$_ImmunityCopyWithImpl(
      _$_Immunity _value, $Res Function(_$_Immunity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clinicalHistory = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_$_Immunity(
      clinicalHistory: freezed == clinicalHistory
          ? _value._clinicalHistory
          : clinicalHistory // ignore: cast_nullable_to_non_nullable
              as List<ClinicalHistory>?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Immunity extends _Immunity {
  _$_Immunity({final List<ClinicalHistory>? clinicalHistory, this.dateOfBirth})
      : _clinicalHistory = clinicalHistory,
        super._();

  factory _$_Immunity.fromJson(Map<String, dynamic> json) =>
      _$$_ImmunityFromJson(json);

  final List<ClinicalHistory>? _clinicalHistory;
  @override
  List<ClinicalHistory>? get clinicalHistory {
    final value = _clinicalHistory;
    if (value == null) return null;
    if (_clinicalHistory is EqualUnmodifiableListView) return _clinicalHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateOfBirth? dateOfBirth;

  @override
  String toString() {
    return 'Immunity(clinicalHistory: $clinicalHistory, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Immunity &&
            const DeepCollectionEquality()
                .equals(other._clinicalHistory, _clinicalHistory) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_clinicalHistory), dateOfBirth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImmunityCopyWith<_$_Immunity> get copyWith =>
      __$$_ImmunityCopyWithImpl<_$_Immunity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImmunityToJson(
      this,
    );
  }
}

abstract class _Immunity extends Immunity {
  factory _Immunity(
      {final List<ClinicalHistory>? clinicalHistory,
      final DateOfBirth? dateOfBirth}) = _$_Immunity;
  _Immunity._() : super._();

  factory _Immunity.fromJson(Map<String, dynamic> json) = _$_Immunity.fromJson;

  @override
  List<ClinicalHistory>? get clinicalHistory;
  @override
  DateOfBirth? get dateOfBirth;
  @override
  @JsonKey(ignore: true)
  _$$_ImmunityCopyWith<_$_Immunity> get copyWith =>
      throw _privateConstructorUsedError;
}
