// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vax_age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaxAgeImpl _$$VaxAgeImplFromJson(Map<String, dynamic> json) => _$VaxAgeImpl(
      absMinAge: json['absMinAge'] as String?,
      minAge: json['minAge'] as String?,
      earliestRecAge: json['earliestRecAge'] as String?,
      latestRecAge: json['latestRecAge'] as String?,
      maxAge: json['maxAge'] as String?,
      effectiveDate: json['effectiveDate'] as String?,
      cessationDate: json['cessationDate'] as String?,
    );

Map<String, dynamic> _$$VaxAgeImplToJson(_$VaxAgeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('absMinAge', instance.absMinAge);
  writeNotNull('minAge', instance.minAge);
  writeNotNull('earliestRecAge', instance.earliestRecAge);
  writeNotNull('latestRecAge', instance.latestRecAge);
  writeNotNull('maxAge', instance.maxAge);
  writeNotNull('effectiveDate', instance.effectiveDate);
  writeNotNull('cessationDate', instance.cessationDate);
  return val;
}
