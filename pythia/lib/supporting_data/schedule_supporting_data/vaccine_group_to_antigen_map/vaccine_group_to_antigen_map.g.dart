// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_group_to_antigen_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineGroupToAntigenMap _$$_VaccineGroupToAntigenMapFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineGroupToAntigenMap(
      vaccineGroupMap: (json['vaccineGroupMap'] as List<dynamic>?)
          ?.map((e) => VaccineGroupMap.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaccineGroupToAntigenMapToJson(
    _$_VaccineGroupToAntigenMap instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vaccineGroupMap',
      instance.vaccineGroupMap?.map((e) => e.toJson()).toList());
  return val;
}

_$_VaccineGroupMap _$$_VaccineGroupMapFromJson(Map<String, dynamic> json) =>
    _$_VaccineGroupMap(
      name: json['name'] as String?,
      antigen:
          (json['antigen'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_VaccineGroupMapToJson(_$_VaccineGroupMap instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('antigen', instance.antigen);
  return val;
}
