// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ObservationCode _$$_ObservationCodeFromJson(Map<String, dynamic> json) =>
    _$_ObservationCode(
      text: json['text'] as String?,
      code: json['code'] as int?,
    );

Map<String, dynamic> _$$_ObservationCodeToJson(_$_ObservationCode instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('code', instance.code);
  return val;
}
