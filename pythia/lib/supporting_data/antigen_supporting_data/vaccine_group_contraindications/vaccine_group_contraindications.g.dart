// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_group_contraindications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccineGroupContraindicationsImpl
    _$$VaccineGroupContraindicationsImplFromJson(Map<String, dynamic> json) =>
        _$VaccineGroupContraindicationsImpl(
          contraindication: (json['contraindication'] as List<dynamic>?)
              ?.map((e) =>
                  GroupContraindication.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$VaccineGroupContraindicationsImplToJson(
    _$VaccineGroupContraindicationsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contraindication',
      instance.contraindication?.map((e) => e.toJson()).toList());
  return val;
}

_$GroupContraindicationImpl _$$GroupContraindicationImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupContraindicationImpl(
      observationCode: json['observationCode'] as String?,
      observationTitle: json['observationTitle'] as String?,
      contraindicationText: json['contraindicationText'] as String?,
      contraindicationGuidance: json['contraindicationGuidance'] as String?,
      beginAge: json['beginAge'] as String?,
      endAge: json['endAge'] as String?,
    );

Map<String, dynamic> _$$GroupContraindicationImplToJson(
    _$GroupContraindicationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('observationCode', instance.observationCode);
  writeNotNull('observationTitle', instance.observationTitle);
  writeNotNull('contraindicationText', instance.contraindicationText);
  writeNotNull('contraindicationGuidance', instance.contraindicationGuidance);
  writeNotNull('beginAge', instance.beginAge);
  writeNotNull('endAge', instance.endAge);
  return val;
}
