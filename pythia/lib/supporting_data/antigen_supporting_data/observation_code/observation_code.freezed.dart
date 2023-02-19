// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observation_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObservationCode _$ObservationCodeFromJson(Map<String, dynamic> json) {
  return _ObservationCode.fromJson(json);
}

/// @nodoc
mixin _$ObservationCode {
  String? get text => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationCodeCopyWith<ObservationCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationCodeCopyWith<$Res> {
  factory $ObservationCodeCopyWith(
          ObservationCode value, $Res Function(ObservationCode) then) =
      _$ObservationCodeCopyWithImpl<$Res, ObservationCode>;
  @useResult
  $Res call({String? text, int? code});
}

/// @nodoc
class _$ObservationCodeCopyWithImpl<$Res, $Val extends ObservationCode>
    implements $ObservationCodeCopyWith<$Res> {
  _$ObservationCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObservationCodeCopyWith<$Res>
    implements $ObservationCodeCopyWith<$Res> {
  factory _$$_ObservationCodeCopyWith(
          _$_ObservationCode value, $Res Function(_$_ObservationCode) then) =
      __$$_ObservationCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, int? code});
}

/// @nodoc
class __$$_ObservationCodeCopyWithImpl<$Res>
    extends _$ObservationCodeCopyWithImpl<$Res, _$_ObservationCode>
    implements _$$_ObservationCodeCopyWith<$Res> {
  __$$_ObservationCodeCopyWithImpl(
      _$_ObservationCode _value, $Res Function(_$_ObservationCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_ObservationCode(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationCode extends _ObservationCode {
  _$_ObservationCode({this.text, this.code}) : super._();

  factory _$_ObservationCode.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationCodeFromJson(json);

  @override
  final String? text;
  @override
  final int? code;

  @override
  String toString() {
    return 'ObservationCode(text: $text, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationCode &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationCodeCopyWith<_$_ObservationCode> get copyWith =>
      __$$_ObservationCodeCopyWithImpl<_$_ObservationCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationCodeToJson(
      this,
    );
  }
}

abstract class _ObservationCode extends ObservationCode {
  factory _ObservationCode({final String? text, final int? code}) =
      _$_ObservationCode;
  _ObservationCode._() : super._();

  factory _ObservationCode.fromJson(Map<String, dynamic> json) =
      _$_ObservationCode.fromJson;

  @override
  String? get text;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationCodeCopyWith<_$_ObservationCode> get copyWith =>
      throw _privateConstructorUsedError;
}
