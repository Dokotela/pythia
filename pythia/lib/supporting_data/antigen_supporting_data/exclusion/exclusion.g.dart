// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exclusion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExclusionImpl _$$ExclusionImplFromJson(Map<String, dynamic> json) =>
    _$ExclusionImpl(
      exclusionCode: json['exclusionCode'] as String?,
      exclusionTitle: json['exclusionTitle'] as String?,
    );

Map<String, dynamic> _$$ExclusionImplToJson(_$ExclusionImpl instance) {
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
