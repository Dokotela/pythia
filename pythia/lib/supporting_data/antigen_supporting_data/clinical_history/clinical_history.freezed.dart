// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinical_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClinicalHistory _$ClinicalHistoryFromJson(Map<String, dynamic> json) {
  return _ClinicalHistory.fromJson(json);
}

/// @nodoc
mixin _$ClinicalHistory {
  int? get guidelineCode => throw _privateConstructorUsedError;
  String? get guidelineTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalHistoryCopyWith<ClinicalHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalHistoryCopyWith<$Res> {
  factory $ClinicalHistoryCopyWith(
          ClinicalHistory value, $Res Function(ClinicalHistory) then) =
      _$ClinicalHistoryCopyWithImpl<$Res, ClinicalHistory>;
  @useResult
  $Res call({int? guidelineCode, String? guidelineTitle});
}

/// @nodoc
class _$ClinicalHistoryCopyWithImpl<$Res, $Val extends ClinicalHistory>
    implements $ClinicalHistoryCopyWith<$Res> {
  _$ClinicalHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guidelineCode = freezed,
    Object? guidelineTitle = freezed,
  }) {
    return _then(_value.copyWith(
      guidelineCode: freezed == guidelineCode
          ? _value.guidelineCode
          : guidelineCode // ignore: cast_nullable_to_non_nullable
              as int?,
      guidelineTitle: freezed == guidelineTitle
          ? _value.guidelineTitle
          : guidelineTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClinicalHistoryCopyWith<$Res>
    implements $ClinicalHistoryCopyWith<$Res> {
  factory _$$_ClinicalHistoryCopyWith(
          _$_ClinicalHistory value, $Res Function(_$_ClinicalHistory) then) =
      __$$_ClinicalHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? guidelineCode, String? guidelineTitle});
}

/// @nodoc
class __$$_ClinicalHistoryCopyWithImpl<$Res>
    extends _$ClinicalHistoryCopyWithImpl<$Res, _$_ClinicalHistory>
    implements _$$_ClinicalHistoryCopyWith<$Res> {
  __$$_ClinicalHistoryCopyWithImpl(
      _$_ClinicalHistory _value, $Res Function(_$_ClinicalHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guidelineCode = freezed,
    Object? guidelineTitle = freezed,
  }) {
    return _then(_$_ClinicalHistory(
      guidelineCode: freezed == guidelineCode
          ? _value.guidelineCode
          : guidelineCode // ignore: cast_nullable_to_non_nullable
              as int?,
      guidelineTitle: freezed == guidelineTitle
          ? _value.guidelineTitle
          : guidelineTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClinicalHistory extends _ClinicalHistory {
  _$_ClinicalHistory({this.guidelineCode, this.guidelineTitle}) : super._();

  factory _$_ClinicalHistory.fromJson(Map<String, dynamic> json) =>
      _$$_ClinicalHistoryFromJson(json);

  @override
  final int? guidelineCode;
  @override
  final String? guidelineTitle;

  @override
  String toString() {
    return 'ClinicalHistory(guidelineCode: $guidelineCode, guidelineTitle: $guidelineTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClinicalHistory &&
            (identical(other.guidelineCode, guidelineCode) ||
                other.guidelineCode == guidelineCode) &&
            (identical(other.guidelineTitle, guidelineTitle) ||
                other.guidelineTitle == guidelineTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, guidelineCode, guidelineTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClinicalHistoryCopyWith<_$_ClinicalHistory> get copyWith =>
      __$$_ClinicalHistoryCopyWithImpl<_$_ClinicalHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClinicalHistoryToJson(
      this,
    );
  }
}

abstract class _ClinicalHistory extends ClinicalHistory {
  factory _ClinicalHistory(
      {final int? guidelineCode,
      final String? guidelineTitle}) = _$_ClinicalHistory;
  _ClinicalHistory._() : super._();

  factory _ClinicalHistory.fromJson(Map<String, dynamic> json) =
      _$_ClinicalHistory.fromJson;

  @override
  int? get guidelineCode;
  @override
  String? get guidelineTitle;
  @override
  @JsonKey(ignore: true)
  _$$_ClinicalHistoryCopyWith<_$_ClinicalHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
