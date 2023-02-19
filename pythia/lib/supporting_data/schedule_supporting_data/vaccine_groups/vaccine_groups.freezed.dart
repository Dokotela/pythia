// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccine_groups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaccineGroups _$VaccineGroupsFromJson(Map<String, dynamic> json) {
  return _VaccineGroups.fromJson(json);
}

/// @nodoc
mixin _$VaccineGroups {
  List<VaccineGroup>? get vaccineGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineGroupsCopyWith<VaccineGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineGroupsCopyWith<$Res> {
  factory $VaccineGroupsCopyWith(
          VaccineGroups value, $Res Function(VaccineGroups) then) =
      _$VaccineGroupsCopyWithImpl<$Res, VaccineGroups>;
  @useResult
  $Res call({List<VaccineGroup>? vaccineGroup});
}

/// @nodoc
class _$VaccineGroupsCopyWithImpl<$Res, $Val extends VaccineGroups>
    implements $VaccineGroupsCopyWith<$Res> {
  _$VaccineGroupsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineGroup = freezed,
  }) {
    return _then(_value.copyWith(
      vaccineGroup: freezed == vaccineGroup
          ? _value.vaccineGroup
          : vaccineGroup // ignore: cast_nullable_to_non_nullable
              as List<VaccineGroup>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineGroupsCopyWith<$Res>
    implements $VaccineGroupsCopyWith<$Res> {
  factory _$$_VaccineGroupsCopyWith(
          _$_VaccineGroups value, $Res Function(_$_VaccineGroups) then) =
      __$$_VaccineGroupsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VaccineGroup>? vaccineGroup});
}

/// @nodoc
class __$$_VaccineGroupsCopyWithImpl<$Res>
    extends _$VaccineGroupsCopyWithImpl<$Res, _$_VaccineGroups>
    implements _$$_VaccineGroupsCopyWith<$Res> {
  __$$_VaccineGroupsCopyWithImpl(
      _$_VaccineGroups _value, $Res Function(_$_VaccineGroups) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineGroup = freezed,
  }) {
    return _then(_$_VaccineGroups(
      vaccineGroup: freezed == vaccineGroup
          ? _value._vaccineGroup
          : vaccineGroup // ignore: cast_nullable_to_non_nullable
              as List<VaccineGroup>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineGroups extends _VaccineGroups {
  _$_VaccineGroups({final List<VaccineGroup>? vaccineGroup})
      : _vaccineGroup = vaccineGroup,
        super._();

  factory _$_VaccineGroups.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineGroupsFromJson(json);

  final List<VaccineGroup>? _vaccineGroup;
  @override
  List<VaccineGroup>? get vaccineGroup {
    final value = _vaccineGroup;
    if (value == null) return null;
    if (_vaccineGroup is EqualUnmodifiableListView) return _vaccineGroup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VaccineGroups(vaccineGroup: $vaccineGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineGroups &&
            const DeepCollectionEquality()
                .equals(other._vaccineGroup, _vaccineGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_vaccineGroup));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineGroupsCopyWith<_$_VaccineGroups> get copyWith =>
      __$$_VaccineGroupsCopyWithImpl<_$_VaccineGroups>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineGroupsToJson(
      this,
    );
  }
}

abstract class _VaccineGroups extends VaccineGroups {
  factory _VaccineGroups({final List<VaccineGroup>? vaccineGroup}) =
      _$_VaccineGroups;
  _VaccineGroups._() : super._();

  factory _VaccineGroups.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroups.fromJson;

  @override
  List<VaccineGroup>? get vaccineGroup;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineGroupsCopyWith<_$_VaccineGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineGroup _$VaccineGroupFromJson(Map<String, dynamic> json) {
  return _VaccineGroup.fromJson(json);
}

/// @nodoc
mixin _$VaccineGroup {
  VaccineGroupName? get name => throw _privateConstructorUsedError;
  Binary? get administerFullVaccineGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineGroupCopyWith<VaccineGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineGroupCopyWith<$Res> {
  factory $VaccineGroupCopyWith(
          VaccineGroup value, $Res Function(VaccineGroup) then) =
      _$VaccineGroupCopyWithImpl<$Res, VaccineGroup>;
  @useResult
  $Res call({VaccineGroupName? name, Binary? administerFullVaccineGroup});
}

/// @nodoc
class _$VaccineGroupCopyWithImpl<$Res, $Val extends VaccineGroup>
    implements $VaccineGroupCopyWith<$Res> {
  _$VaccineGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? administerFullVaccineGroup = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as VaccineGroupName?,
      administerFullVaccineGroup: freezed == administerFullVaccineGroup
          ? _value.administerFullVaccineGroup
          : administerFullVaccineGroup // ignore: cast_nullable_to_non_nullable
              as Binary?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineGroupCopyWith<$Res>
    implements $VaccineGroupCopyWith<$Res> {
  factory _$$_VaccineGroupCopyWith(
          _$_VaccineGroup value, $Res Function(_$_VaccineGroup) then) =
      __$$_VaccineGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VaccineGroupName? name, Binary? administerFullVaccineGroup});
}

/// @nodoc
class __$$_VaccineGroupCopyWithImpl<$Res>
    extends _$VaccineGroupCopyWithImpl<$Res, _$_VaccineGroup>
    implements _$$_VaccineGroupCopyWith<$Res> {
  __$$_VaccineGroupCopyWithImpl(
      _$_VaccineGroup _value, $Res Function(_$_VaccineGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? administerFullVaccineGroup = freezed,
  }) {
    return _then(_$_VaccineGroup(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as VaccineGroupName?,
      administerFullVaccineGroup: freezed == administerFullVaccineGroup
          ? _value.administerFullVaccineGroup
          : administerFullVaccineGroup // ignore: cast_nullable_to_non_nullable
              as Binary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineGroup extends _VaccineGroup {
  _$_VaccineGroup({this.name, this.administerFullVaccineGroup}) : super._();

  factory _$_VaccineGroup.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineGroupFromJson(json);

  @override
  final VaccineGroupName? name;
  @override
  final Binary? administerFullVaccineGroup;

  @override
  String toString() {
    return 'VaccineGroup(name: $name, administerFullVaccineGroup: $administerFullVaccineGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineGroup &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.administerFullVaccineGroup,
                    administerFullVaccineGroup) ||
                other.administerFullVaccineGroup ==
                    administerFullVaccineGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, administerFullVaccineGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineGroupCopyWith<_$_VaccineGroup> get copyWith =>
      __$$_VaccineGroupCopyWithImpl<_$_VaccineGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineGroupToJson(
      this,
    );
  }
}

abstract class _VaccineGroup extends VaccineGroup {
  factory _VaccineGroup(
      {final VaccineGroupName? name,
      final Binary? administerFullVaccineGroup}) = _$_VaccineGroup;
  _VaccineGroup._() : super._();

  factory _VaccineGroup.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroup.fromJson;

  @override
  VaccineGroupName? get name;
  @override
  Binary? get administerFullVaccineGroup;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineGroupCopyWith<_$_VaccineGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
