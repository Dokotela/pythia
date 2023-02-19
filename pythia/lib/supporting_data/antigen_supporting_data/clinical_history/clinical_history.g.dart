// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinical_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClinicalHistory _$$_ClinicalHistoryFromJson(Map<String, dynamic> json) =>
    _$_ClinicalHistory(
      guidelineCode: json['guidelineCode'] as int?,
      guidelineTitle: json['guidelineTitle'] as String?,
    );

Map<String, dynamic> _$$_ClinicalHistoryToJson(_$_ClinicalHistory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guidelineCode', instance.guidelineCode);
  writeNotNull('guidelineTitle', instance.guidelineTitle);
  return val;
}
