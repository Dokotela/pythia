// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contraindications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContraindicationsImpl _$$ContraindicationsImplFromJson(
        Map<String, dynamic> json) =>
    _$ContraindicationsImpl(
      vaccineGroup: json['vaccineGroup'] == null
          ? null
          : VaccineGroupContraindications.fromJson(
              json['vaccineGroup'] as Map<String, dynamic>),
      vaccine: json['vaccine'] == null
          ? null
          : VaccineContraindications.fromJson(
              json['vaccine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContraindicationsImplToJson(
    _$ContraindicationsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vaccineGroup', instance.vaccineGroup?.toJson());
  writeNotNull('vaccine', instance.vaccine?.toJson());
  return val;
}
