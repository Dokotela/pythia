// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineGroups _$$_VaccineGroupsFromJson(Map<String, dynamic> json) =>
    _$_VaccineGroups(
      vaccineGroup: (json['vaccineGroup'] as List<dynamic>?)
          ?.map((e) => VaccineGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaccineGroupsToJson(_$_VaccineGroups instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'vaccineGroup', instance.vaccineGroup?.map((e) => e.toJson()).toList());
  return val;
}

_$_VaccineGroup _$$_VaccineGroupFromJson(Map<String, dynamic> json) =>
    _$_VaccineGroup(
      name: json['name'] as String?,
      administerFullVaccineGroup: $enumDecodeNullable(
          _$BinaryEnumMap, json['administerFullVaccineGroup']),
    );

Map<String, dynamic> _$$_VaccineGroupToJson(_$_VaccineGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('administerFullVaccineGroup',
      _$BinaryEnumMap[instance.administerFullVaccineGroup]);
  return val;
}

const _$BinaryEnumMap = {
  Binary.yes: 'Yes',
  Binary.no: 'No',
  Binary.na: '',
};
