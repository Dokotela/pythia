// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cvx_to_antigen_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CvxToAntigenMap _$CvxToAntigenMapFromJson(Map<String, dynamic> json) {
  return _CvxToAntigenMap.fromJson(json);
}

/// @nodoc
mixin _$CvxToAntigenMap {
  List<CvxMap>? get cvxMap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CvxToAntigenMapCopyWith<CvxToAntigenMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CvxToAntigenMapCopyWith<$Res> {
  factory $CvxToAntigenMapCopyWith(
          CvxToAntigenMap value, $Res Function(CvxToAntigenMap) then) =
      _$CvxToAntigenMapCopyWithImpl<$Res, CvxToAntigenMap>;
  @useResult
  $Res call({List<CvxMap>? cvxMap});
}

/// @nodoc
class _$CvxToAntigenMapCopyWithImpl<$Res, $Val extends CvxToAntigenMap>
    implements $CvxToAntigenMapCopyWith<$Res> {
  _$CvxToAntigenMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvxMap = freezed,
  }) {
    return _then(_value.copyWith(
      cvxMap: freezed == cvxMap
          ? _value.cvxMap
          : cvxMap // ignore: cast_nullable_to_non_nullable
              as List<CvxMap>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CvxToAntigenMapCopyWith<$Res>
    implements $CvxToAntigenMapCopyWith<$Res> {
  factory _$$_CvxToAntigenMapCopyWith(
          _$_CvxToAntigenMap value, $Res Function(_$_CvxToAntigenMap) then) =
      __$$_CvxToAntigenMapCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CvxMap>? cvxMap});
}

/// @nodoc
class __$$_CvxToAntigenMapCopyWithImpl<$Res>
    extends _$CvxToAntigenMapCopyWithImpl<$Res, _$_CvxToAntigenMap>
    implements _$$_CvxToAntigenMapCopyWith<$Res> {
  __$$_CvxToAntigenMapCopyWithImpl(
      _$_CvxToAntigenMap _value, $Res Function(_$_CvxToAntigenMap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvxMap = freezed,
  }) {
    return _then(_$_CvxToAntigenMap(
      cvxMap: freezed == cvxMap
          ? _value._cvxMap
          : cvxMap // ignore: cast_nullable_to_non_nullable
              as List<CvxMap>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CvxToAntigenMap extends _CvxToAntigenMap {
  _$_CvxToAntigenMap({final List<CvxMap>? cvxMap})
      : _cvxMap = cvxMap,
        super._();

  factory _$_CvxToAntigenMap.fromJson(Map<String, dynamic> json) =>
      _$$_CvxToAntigenMapFromJson(json);

  final List<CvxMap>? _cvxMap;
  @override
  List<CvxMap>? get cvxMap {
    final value = _cvxMap;
    if (value == null) return null;
    if (_cvxMap is EqualUnmodifiableListView) return _cvxMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CvxToAntigenMap(cvxMap: $cvxMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CvxToAntigenMap &&
            const DeepCollectionEquality().equals(other._cvxMap, _cvxMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cvxMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CvxToAntigenMapCopyWith<_$_CvxToAntigenMap> get copyWith =>
      __$$_CvxToAntigenMapCopyWithImpl<_$_CvxToAntigenMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CvxToAntigenMapToJson(
      this,
    );
  }
}

abstract class _CvxToAntigenMap extends CvxToAntigenMap {
  factory _CvxToAntigenMap({final List<CvxMap>? cvxMap}) = _$_CvxToAntigenMap;
  _CvxToAntigenMap._() : super._();

  factory _CvxToAntigenMap.fromJson(Map<String, dynamic> json) =
      _$_CvxToAntigenMap.fromJson;

  @override
  List<CvxMap>? get cvxMap;
  @override
  @JsonKey(ignore: true)
  _$$_CvxToAntigenMapCopyWith<_$_CvxToAntigenMap> get copyWith =>
      throw _privateConstructorUsedError;
}

CvxMap _$CvxMapFromJson(Map<String, dynamic> json) {
  return _CvxMap.fromJson(json);
}

/// @nodoc
mixin _$CvxMap {
  String? get cvx => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  List<Association>? get association => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CvxMapCopyWith<CvxMap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CvxMapCopyWith<$Res> {
  factory $CvxMapCopyWith(CvxMap value, $Res Function(CvxMap) then) =
      _$CvxMapCopyWithImpl<$Res, CvxMap>;
  @useResult
  $Res call(
      {String? cvx, String? shortDescription, List<Association>? association});
}

/// @nodoc
class _$CvxMapCopyWithImpl<$Res, $Val extends CvxMap>
    implements $CvxMapCopyWith<$Res> {
  _$CvxMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvx = freezed,
    Object? shortDescription = freezed,
    Object? association = freezed,
  }) {
    return _then(_value.copyWith(
      cvx: freezed == cvx
          ? _value.cvx
          : cvx // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      association: freezed == association
          ? _value.association
          : association // ignore: cast_nullable_to_non_nullable
              as List<Association>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CvxMapCopyWith<$Res> implements $CvxMapCopyWith<$Res> {
  factory _$$_CvxMapCopyWith(_$_CvxMap value, $Res Function(_$_CvxMap) then) =
      __$$_CvxMapCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cvx, String? shortDescription, List<Association>? association});
}

/// @nodoc
class __$$_CvxMapCopyWithImpl<$Res>
    extends _$CvxMapCopyWithImpl<$Res, _$_CvxMap>
    implements _$$_CvxMapCopyWith<$Res> {
  __$$_CvxMapCopyWithImpl(_$_CvxMap _value, $Res Function(_$_CvxMap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvx = freezed,
    Object? shortDescription = freezed,
    Object? association = freezed,
  }) {
    return _then(_$_CvxMap(
      cvx: freezed == cvx
          ? _value.cvx
          : cvx // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      association: freezed == association
          ? _value._association
          : association // ignore: cast_nullable_to_non_nullable
              as List<Association>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CvxMap extends _CvxMap {
  _$_CvxMap(
      {this.cvx, this.shortDescription, final List<Association>? association})
      : _association = association,
        super._();

  factory _$_CvxMap.fromJson(Map<String, dynamic> json) =>
      _$$_CvxMapFromJson(json);

  @override
  final String? cvx;
  @override
  final String? shortDescription;
  final List<Association>? _association;
  @override
  List<Association>? get association {
    final value = _association;
    if (value == null) return null;
    if (_association is EqualUnmodifiableListView) return _association;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CvxMap(cvx: $cvx, shortDescription: $shortDescription, association: $association)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CvxMap &&
            (identical(other.cvx, cvx) || other.cvx == cvx) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            const DeepCollectionEquality()
                .equals(other._association, _association));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cvx, shortDescription,
      const DeepCollectionEquality().hash(_association));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CvxMapCopyWith<_$_CvxMap> get copyWith =>
      __$$_CvxMapCopyWithImpl<_$_CvxMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CvxMapToJson(
      this,
    );
  }
}

abstract class _CvxMap extends CvxMap {
  factory _CvxMap(
      {final String? cvx,
      final String? shortDescription,
      final List<Association>? association}) = _$_CvxMap;
  _CvxMap._() : super._();

  factory _CvxMap.fromJson(Map<String, dynamic> json) = _$_CvxMap.fromJson;

  @override
  String? get cvx;
  @override
  String? get shortDescription;
  @override
  List<Association>? get association;
  @override
  @JsonKey(ignore: true)
  _$$_CvxMapCopyWith<_$_CvxMap> get copyWith =>
      throw _privateConstructorUsedError;
}

Association _$AssociationFromJson(Map<String, dynamic> json) {
  return _Association.fromJson(json);
}

/// @nodoc
mixin _$Association {
  String? get antigen => throw _privateConstructorUsedError;
  String? get associationBeginAge => throw _privateConstructorUsedError;
  String? get associationEndAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssociationCopyWith<Association> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssociationCopyWith<$Res> {
  factory $AssociationCopyWith(
          Association value, $Res Function(Association) then) =
      _$AssociationCopyWithImpl<$Res, Association>;
  @useResult
  $Res call(
      {String? antigen,
      String? associationBeginAge,
      String? associationEndAge});
}

/// @nodoc
class _$AssociationCopyWithImpl<$Res, $Val extends Association>
    implements $AssociationCopyWith<$Res> {
  _$AssociationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? antigen = freezed,
    Object? associationBeginAge = freezed,
    Object? associationEndAge = freezed,
  }) {
    return _then(_value.copyWith(
      antigen: freezed == antigen
          ? _value.antigen
          : antigen // ignore: cast_nullable_to_non_nullable
              as String?,
      associationBeginAge: freezed == associationBeginAge
          ? _value.associationBeginAge
          : associationBeginAge // ignore: cast_nullable_to_non_nullable
              as String?,
      associationEndAge: freezed == associationEndAge
          ? _value.associationEndAge
          : associationEndAge // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssociationCopyWith<$Res>
    implements $AssociationCopyWith<$Res> {
  factory _$$_AssociationCopyWith(
          _$_Association value, $Res Function(_$_Association) then) =
      __$$_AssociationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? antigen,
      String? associationBeginAge,
      String? associationEndAge});
}

/// @nodoc
class __$$_AssociationCopyWithImpl<$Res>
    extends _$AssociationCopyWithImpl<$Res, _$_Association>
    implements _$$_AssociationCopyWith<$Res> {
  __$$_AssociationCopyWithImpl(
      _$_Association _value, $Res Function(_$_Association) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? antigen = freezed,
    Object? associationBeginAge = freezed,
    Object? associationEndAge = freezed,
  }) {
    return _then(_$_Association(
      antigen: freezed == antigen
          ? _value.antigen
          : antigen // ignore: cast_nullable_to_non_nullable
              as String?,
      associationBeginAge: freezed == associationBeginAge
          ? _value.associationBeginAge
          : associationBeginAge // ignore: cast_nullable_to_non_nullable
              as String?,
      associationEndAge: freezed == associationEndAge
          ? _value.associationEndAge
          : associationEndAge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Association extends _Association {
  _$_Association(
      {this.antigen, this.associationBeginAge, this.associationEndAge})
      : super._();

  factory _$_Association.fromJson(Map<String, dynamic> json) =>
      _$$_AssociationFromJson(json);

  @override
  final String? antigen;
  @override
  final String? associationBeginAge;
  @override
  final String? associationEndAge;

  @override
  String toString() {
    return 'Association(antigen: $antigen, associationBeginAge: $associationBeginAge, associationEndAge: $associationEndAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Association &&
            (identical(other.antigen, antigen) || other.antigen == antigen) &&
            (identical(other.associationBeginAge, associationBeginAge) ||
                other.associationBeginAge == associationBeginAge) &&
            (identical(other.associationEndAge, associationEndAge) ||
                other.associationEndAge == associationEndAge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, antigen, associationBeginAge, associationEndAge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssociationCopyWith<_$_Association> get copyWith =>
      __$$_AssociationCopyWithImpl<_$_Association>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssociationToJson(
      this,
    );
  }
}

abstract class _Association extends Association {
  factory _Association(
      {final String? antigen,
      final String? associationBeginAge,
      final String? associationEndAge}) = _$_Association;
  _Association._() : super._();

  factory _Association.fromJson(Map<String, dynamic> json) =
      _$_Association.fromJson;

  @override
  String? get antigen;
  @override
  String? get associationBeginAge;
  @override
  String? get associationEndAge;
  @override
  @JsonKey(ignore: true)
  _$$_AssociationCopyWith<_$_Association> get copyWith =>
      throw _privateConstructorUsedError;
}
