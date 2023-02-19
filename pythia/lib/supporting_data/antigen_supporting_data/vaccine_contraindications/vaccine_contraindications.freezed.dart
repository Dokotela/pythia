// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccine_contraindications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaccineContraindications _$VaccineContraindicationsFromJson(
    Map<String, dynamic> json) {
  return _VaccineContraindications.fromJson(json);
}

/// @nodoc
mixin _$VaccineContraindications {
  List<VaccineContraindication>? get contraindication =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineContraindicationsCopyWith<VaccineContraindications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineContraindicationsCopyWith<$Res> {
  factory $VaccineContraindicationsCopyWith(VaccineContraindications value,
          $Res Function(VaccineContraindications) then) =
      _$VaccineContraindicationsCopyWithImpl<$Res, VaccineContraindications>;
  @useResult
  $Res call({List<VaccineContraindication>? contraindication});
}

/// @nodoc
class _$VaccineContraindicationsCopyWithImpl<$Res,
        $Val extends VaccineContraindications>
    implements $VaccineContraindicationsCopyWith<$Res> {
  _$VaccineContraindicationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contraindication = freezed,
  }) {
    return _then(_value.copyWith(
      contraindication: freezed == contraindication
          ? _value.contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as List<VaccineContraindication>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineContraindicationsCopyWith<$Res>
    implements $VaccineContraindicationsCopyWith<$Res> {
  factory _$$_VaccineContraindicationsCopyWith(
          _$_VaccineContraindications value,
          $Res Function(_$_VaccineContraindications) then) =
      __$$_VaccineContraindicationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VaccineContraindication>? contraindication});
}

/// @nodoc
class __$$_VaccineContraindicationsCopyWithImpl<$Res>
    extends _$VaccineContraindicationsCopyWithImpl<$Res,
        _$_VaccineContraindications>
    implements _$$_VaccineContraindicationsCopyWith<$Res> {
  __$$_VaccineContraindicationsCopyWithImpl(_$_VaccineContraindications _value,
      $Res Function(_$_VaccineContraindications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contraindication = freezed,
  }) {
    return _then(_$_VaccineContraindications(
      contraindication: freezed == contraindication
          ? _value._contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as List<VaccineContraindication>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineContraindications extends _VaccineContraindications {
  _$_VaccineContraindications(
      {final List<VaccineContraindication>? contraindication})
      : _contraindication = contraindication,
        super._();

  factory _$_VaccineContraindications.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineContraindicationsFromJson(json);

  final List<VaccineContraindication>? _contraindication;
  @override
  List<VaccineContraindication>? get contraindication {
    final value = _contraindication;
    if (value == null) return null;
    if (_contraindication is EqualUnmodifiableListView)
      return _contraindication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VaccineContraindications(contraindication: $contraindication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineContraindications &&
            const DeepCollectionEquality()
                .equals(other._contraindication, _contraindication));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_contraindication));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineContraindicationsCopyWith<_$_VaccineContraindications>
      get copyWith => __$$_VaccineContraindicationsCopyWithImpl<
          _$_VaccineContraindications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineContraindicationsToJson(
      this,
    );
  }
}

abstract class _VaccineContraindications extends VaccineContraindications {
  factory _VaccineContraindications(
          {final List<VaccineContraindication>? contraindication}) =
      _$_VaccineContraindications;
  _VaccineContraindications._() : super._();

  factory _VaccineContraindications.fromJson(Map<String, dynamic> json) =
      _$_VaccineContraindications.fromJson;

  @override
  List<VaccineContraindication>? get contraindication;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineContraindicationsCopyWith<_$_VaccineContraindications>
      get copyWith => throw _privateConstructorUsedError;
}

VaccineContraindication _$VaccineContraindicationFromJson(
    Map<String, dynamic> json) {
  return _VaccineContraindication.fromJson(json);
}

/// @nodoc
mixin _$VaccineContraindication {
  int? get observationCode => throw _privateConstructorUsedError;
  String? get observationTitle => throw _privateConstructorUsedError;
  String? get contraindicationText => throw _privateConstructorUsedError;
  String? get contraindicationGuidance => throw _privateConstructorUsedError;
  List<Vaccine>? get contraindicatedVaccine =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineContraindicationCopyWith<VaccineContraindication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineContraindicationCopyWith<$Res> {
  factory $VaccineContraindicationCopyWith(VaccineContraindication value,
          $Res Function(VaccineContraindication) then) =
      _$VaccineContraindicationCopyWithImpl<$Res, VaccineContraindication>;
  @useResult
  $Res call(
      {int? observationCode,
      String? observationTitle,
      String? contraindicationText,
      String? contraindicationGuidance,
      List<Vaccine>? contraindicatedVaccine});
}

/// @nodoc
class _$VaccineContraindicationCopyWithImpl<$Res,
        $Val extends VaccineContraindication>
    implements $VaccineContraindicationCopyWith<$Res> {
  _$VaccineContraindicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationCode = freezed,
    Object? observationTitle = freezed,
    Object? contraindicationText = freezed,
    Object? contraindicationGuidance = freezed,
    Object? contraindicatedVaccine = freezed,
  }) {
    return _then(_value.copyWith(
      observationCode: freezed == observationCode
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      observationTitle: freezed == observationTitle
          ? _value.observationTitle
          : observationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationText: freezed == contraindicationText
          ? _value.contraindicationText
          : contraindicationText // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationGuidance: freezed == contraindicationGuidance
          ? _value.contraindicationGuidance
          : contraindicationGuidance // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicatedVaccine: freezed == contraindicatedVaccine
          ? _value.contraindicatedVaccine
          : contraindicatedVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineContraindicationCopyWith<$Res>
    implements $VaccineContraindicationCopyWith<$Res> {
  factory _$$_VaccineContraindicationCopyWith(_$_VaccineContraindication value,
          $Res Function(_$_VaccineContraindication) then) =
      __$$_VaccineContraindicationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? observationCode,
      String? observationTitle,
      String? contraindicationText,
      String? contraindicationGuidance,
      List<Vaccine>? contraindicatedVaccine});
}

/// @nodoc
class __$$_VaccineContraindicationCopyWithImpl<$Res>
    extends _$VaccineContraindicationCopyWithImpl<$Res,
        _$_VaccineContraindication>
    implements _$$_VaccineContraindicationCopyWith<$Res> {
  __$$_VaccineContraindicationCopyWithImpl(_$_VaccineContraindication _value,
      $Res Function(_$_VaccineContraindication) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationCode = freezed,
    Object? observationTitle = freezed,
    Object? contraindicationText = freezed,
    Object? contraindicationGuidance = freezed,
    Object? contraindicatedVaccine = freezed,
  }) {
    return _then(_$_VaccineContraindication(
      observationCode: freezed == observationCode
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      observationTitle: freezed == observationTitle
          ? _value.observationTitle
          : observationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationText: freezed == contraindicationText
          ? _value.contraindicationText
          : contraindicationText // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationGuidance: freezed == contraindicationGuidance
          ? _value.contraindicationGuidance
          : contraindicationGuidance // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicatedVaccine: freezed == contraindicatedVaccine
          ? _value._contraindicatedVaccine
          : contraindicatedVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineContraindication extends _VaccineContraindication {
  _$_VaccineContraindication(
      {this.observationCode,
      this.observationTitle,
      this.contraindicationText,
      this.contraindicationGuidance,
      final List<Vaccine>? contraindicatedVaccine})
      : _contraindicatedVaccine = contraindicatedVaccine,
        super._();

  factory _$_VaccineContraindication.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineContraindicationFromJson(json);

  @override
  final int? observationCode;
  @override
  final String? observationTitle;
  @override
  final String? contraindicationText;
  @override
  final String? contraindicationGuidance;
  final List<Vaccine>? _contraindicatedVaccine;
  @override
  List<Vaccine>? get contraindicatedVaccine {
    final value = _contraindicatedVaccine;
    if (value == null) return null;
    if (_contraindicatedVaccine is EqualUnmodifiableListView)
      return _contraindicatedVaccine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VaccineContraindication(observationCode: $observationCode, observationTitle: $observationTitle, contraindicationText: $contraindicationText, contraindicationGuidance: $contraindicationGuidance, contraindicatedVaccine: $contraindicatedVaccine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineContraindication &&
            (identical(other.observationCode, observationCode) ||
                other.observationCode == observationCode) &&
            (identical(other.observationTitle, observationTitle) ||
                other.observationTitle == observationTitle) &&
            (identical(other.contraindicationText, contraindicationText) ||
                other.contraindicationText == contraindicationText) &&
            (identical(
                    other.contraindicationGuidance, contraindicationGuidance) ||
                other.contraindicationGuidance == contraindicationGuidance) &&
            const DeepCollectionEquality().equals(
                other._contraindicatedVaccine, _contraindicatedVaccine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      observationCode,
      observationTitle,
      contraindicationText,
      contraindicationGuidance,
      const DeepCollectionEquality().hash(_contraindicatedVaccine));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineContraindicationCopyWith<_$_VaccineContraindication>
      get copyWith =>
          __$$_VaccineContraindicationCopyWithImpl<_$_VaccineContraindication>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineContraindicationToJson(
      this,
    );
  }
}

abstract class _VaccineContraindication extends VaccineContraindication {
  factory _VaccineContraindication(
          {final int? observationCode,
          final String? observationTitle,
          final String? contraindicationText,
          final String? contraindicationGuidance,
          final List<Vaccine>? contraindicatedVaccine}) =
      _$_VaccineContraindication;
  _VaccineContraindication._() : super._();

  factory _VaccineContraindication.fromJson(Map<String, dynamic> json) =
      _$_VaccineContraindication.fromJson;

  @override
  int? get observationCode;
  @override
  String? get observationTitle;
  @override
  String? get contraindicationText;
  @override
  String? get contraindicationGuidance;
  @override
  List<Vaccine>? get contraindicatedVaccine;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineContraindicationCopyWith<_$_VaccineContraindication>
      get copyWith => throw _privateConstructorUsedError;
}
