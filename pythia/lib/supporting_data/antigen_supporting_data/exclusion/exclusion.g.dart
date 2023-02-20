// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exclusion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exclusion _$$_ExclusionFromJson(Map<String, dynamic> json) => _$_Exclusion(
      exclusionCode: json['exclusionCode'] as String?,
      exclusionTitle: json['exclusionTitle'] as String?,
    );

Map<String, dynamic> _$$_ExclusionToJson(_$_Exclusion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exclusionCode', instance.exclusionCode);
  writeNotNull('exclusionTitle', instance.exclusionTitle);
  return val;
}
