// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccine_group_contraindications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaccineGroupContraindications _$VaccineGroupContraindicationsFromJson(
    Map<String, dynamic> json) {
  return _VaccineGroupContraindications.fromJson(json);
}

/// @nodoc
mixin _$VaccineGroupContraindications {
  List<GroupContraindication>? get contraindication =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineGroupContraindicationsCopyWith<VaccineGroupContraindications>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineGroupContraindicationsCopyWith<$Res> {
  factory $VaccineGroupContraindicationsCopyWith(
          VaccineGroupContraindications value,
          $Res Function(VaccineGroupContraindications) then) =
      _$VaccineGroupContraindicationsCopyWithImpl<$Res,
          VaccineGroupContraindications>;
  @useResult
  $Res call({List<GroupContraindication>? contraindication});
}

/// @nodoc
class _$VaccineGroupContraindicationsCopyWithImpl<$Res,
        $Val extends VaccineGroupContraindications>
    implements $VaccineGroupContraindicationsCopyWith<$Res> {
  _$VaccineGroupContraindicationsCopyWithImpl(this._value, this._then);

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
              as List<GroupContraindication>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineGroupContraindicationsCopyWith<$Res>
    implements $VaccineGroupContraindicationsCopyWith<$Res> {
  factory _$$_VaccineGroupContraindicationsCopyWith(
          _$_VaccineGroupContraindications value,
          $Res Function(_$_VaccineGroupContraindications) then) =
      __$$_VaccineGroupContraindicationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GroupContraindication>? contraindication});
}

/// @nodoc
class __$$_VaccineGroupContraindicationsCopyWithImpl<$Res>
    extends _$VaccineGroupContraindicationsCopyWithImpl<$Res,
        _$_VaccineGroupContraindications>
    implements _$$_VaccineGroupContraindicationsCopyWith<$Res> {
  __$$_VaccineGroupContraindicationsCopyWithImpl(
      _$_VaccineGroupContraindications _value,
      $Res Function(_$_VaccineGroupContraindications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contraindication = freezed,
  }) {
    return _then(_$_VaccineGroupContraindications(
      contraindication: freezed == contraindication
          ? _value._contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as List<GroupContraindication>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineGroupContraindications extends _VaccineGroupContraindications {
  _$_VaccineGroupContraindications(
      {final List<GroupContraindication>? contraindication})
      : _contraindication = contraindication,
        super._();

  factory _$_VaccineGroupContraindications.fromJson(
          Map<String, dynamic> json) =>
      _$$_VaccineGroupContraindicationsFromJson(json);

  final List<GroupContraindication>? _contraindication;
  @override
  List<GroupContraindication>? get contraindication {
    final value = _contraindication;
    if (value == null) return null;
    if (_contraindication is EqualUnmodifiableListView)
      return _contraindication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VaccineGroupContraindications(contraindication: $contraindication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineGroupContraindications &&
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
  _$$_VaccineGroupContraindicationsCopyWith<_$_VaccineGroupContraindications>
      get copyWith => __$$_VaccineGroupContraindicationsCopyWithImpl<
          _$_VaccineGroupContraindications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineGroupContraindicationsToJson(
      this,
    );
  }
}

abstract class _VaccineGroupContraindications
    extends VaccineGroupContraindications {
  factory _VaccineGroupContraindications(
          {final List<GroupContraindication>? contraindication}) =
      _$_VaccineGroupContraindications;
  _VaccineGroupContraindications._() : super._();

  factory _VaccineGroupContraindications.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroupContraindications.fromJson;

  @override
  List<GroupContraindication>? get contraindication;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineGroupContraindicationsCopyWith<_$_VaccineGroupContraindications>
      get copyWith => throw _privateConstructorUsedError;
}

GroupContraindication _$GroupContraindicationFromJson(
    Map<String, dynamic> json) {
  return _GroupContraindication.fromJson(json);
}

/// @nodoc
mixin _$GroupContraindication {
  int? get observationCode => throw _privateConstructorUsedError;
  String? get observationTitle => throw _privateConstructorUsedError;
  String? get contraindicationText => throw _privateConstructorUsedError;
  String? get contraindicationGuidance => throw _privateConstructorUsedError;
  String? get beginAge => throw _privateConstructorUsedError;
  String? get endAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupContraindicationCopyWith<GroupContraindication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupContraindicationCopyWith<$Res> {
  factory $GroupContraindicationCopyWith(GroupContraindication value,
          $Res Function(GroupContraindication) then) =
      _$GroupContraindicationCopyWithImpl<$Res, GroupContraindication>;
  @useResult
  $Res call(
      {int? observationCode,
      String? observationTitle,
      String? contraindicationText,
      String? contraindicationGuidance,
      String? beginAge,
      String? endAge});
}

/// @nodoc
class _$GroupContraindicationCopyWithImpl<$Res,
        $Val extends GroupContraindication>
    implements $GroupContraindicationCopyWith<$Res> {
  _$GroupContraindicationCopyWithImpl(this._value, this._then);

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
    Object? beginAge = freezed,
    Object? endAge = freezed,
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
      beginAge: freezed == beginAge
          ? _value.beginAge
          : beginAge // ignore: cast_nullable_to_non_nullable
              as String?,
      endAge: freezed == endAge
          ? _value.endAge
          : endAge // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupContraindicationCopyWith<$Res>
    implements $GroupContraindicationCopyWith<$Res> {
  factory _$$_GroupContraindicationCopyWith(_$_GroupContraindication value,
          $Res Function(_$_GroupContraindication) then) =
      __$$_GroupContraindicationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? observationCode,
      String? observationTitle,
      String? contraindicationText,
      String? contraindicationGuidance,
      String? beginAge,
      String? endAge});
}

/// @nodoc
class __$$_GroupContraindicationCopyWithImpl<$Res>
    extends _$GroupContraindicationCopyWithImpl<$Res, _$_GroupContraindication>
    implements _$$_GroupContraindicationCopyWith<$Res> {
  __$$_GroupContraindicationCopyWithImpl(_$_GroupContraindication _value,
      $Res Function(_$_GroupContraindication) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationCode = freezed,
    Object? observationTitle = freezed,
    Object? contraindicationText = freezed,
    Object? contraindicationGuidance = freezed,
    Object? beginAge = freezed,
    Object? endAge = freezed,
  }) {
    return _then(_$_GroupContraindication(
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
      beginAge: freezed == beginAge
          ? _value.beginAge
          : beginAge // ignore: cast_nullable_to_non_nullable
              as String?,
      endAge: freezed == endAge
          ? _value.endAge
          : endAge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupContraindication extends _GroupContraindication {
  _$_GroupContraindication(
      {this.observationCode,
      this.observationTitle,
      this.contraindicationText,
      this.contraindicationGuidance,
      this.beginAge,
      this.endAge})
      : super._();

  factory _$_GroupContraindication.fromJson(Map<String, dynamic> json) =>
      _$$_GroupContraindicationFromJson(json);

  @override
  final int? observationCode;
  @override
  final String? observationTitle;
  @override
  final String? contraindicationText;
  @override
  final String? contraindicationGuidance;
  @override
  final String? beginAge;
  @override
  final String? endAge;

  @override
  String toString() {
    return 'GroupContraindication(observationCode: $observationCode, observationTitle: $observationTitle, contraindicationText: $contraindicationText, contraindicationGuidance: $contraindicationGuidance, beginAge: $beginAge, endAge: $endAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupContraindication &&
            (identical(other.observationCode, observationCode) ||
                other.observationCode == observationCode) &&
            (identical(other.observationTitle, observationTitle) ||
                other.observationTitle == observationTitle) &&
            (identical(other.contraindicationText, contraindicationText) ||
                other.contraindicationText == contraindicationText) &&
            (identical(
                    other.contraindicationGuidance, contraindicationGuidance) ||
                other.contraindicationGuidance == contraindicationGuidance) &&
            (identical(other.beginAge, beginAge) ||
                other.beginAge == beginAge) &&
            (identical(other.endAge, endAge) || other.endAge == endAge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      observationCode,
      observationTitle,
      contraindicationText,
      contraindicationGuidance,
      beginAge,
      endAge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupContraindicationCopyWith<_$_GroupContraindication> get copyWith =>
      __$$_GroupContraindicationCopyWithImpl<_$_GroupContraindication>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupContraindicationToJson(
      this,
    );
  }
}

abstract class _GroupContraindication extends GroupContraindication {
  factory _GroupContraindication(
      {final int? observationCode,
      final String? observationTitle,
      final String? contraindicationText,
      final String? contraindicationGuidance,
      final String? beginAge,
      final String? endAge}) = _$_GroupContraindication;
  _GroupContraindication._() : super._();

  factory _GroupContraindication.fromJson(Map<String, dynamic> json) =
      _$_GroupContraindication.fromJson;

  @override
  int? get observationCode;
  @override
  String? get observationTitle;
  @override
  String? get contraindicationText;
  @override
  String? get contraindicationGuidance;
  @override
  String? get beginAge;
  @override
  String? get endAge;
  @override
  @JsonKey(ignore: true)
  _$$_GroupContraindicationCopyWith<_$_GroupContraindication> get copyWith =>
      throw _privateConstructorUsedError;
}