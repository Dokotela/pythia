// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccineGroupsImpl _$$VaccineGroupsImplFromJson(Map<String, dynamic> json) =>
    _$VaccineGroupsImpl(
      vaccineGroup: (json['vaccineGroup'] as List<dynamic>?)
          ?.map((e) => VaccineGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VaccineGroupsImplToJson(_$VaccineGroupsImpl instance) {
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

_$VaccineGroupImpl _$$VaccineGroupImplFromJson(Map<String, dynamic> json) =>
    _$VaccineGroupImpl(
      name: json['name'] as String?,
      administerFullVaccineGroup: $enumDecodeNullable(
          _$BinaryEnumMap, json['administerFullVaccineGroup']),
    );

Map<String, dynamic> _$$VaccineGroupImplToJson(_$VaccineGroupImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('administerFullVaccineGroup',
      instance.administerFullVaccineGroup?.toJson());
  return val;
}

const _$BinaryEnumMap = {
  Binary.yes: 'Yes',
  Binary.no: 'No',
  Binary.na: '',
};
