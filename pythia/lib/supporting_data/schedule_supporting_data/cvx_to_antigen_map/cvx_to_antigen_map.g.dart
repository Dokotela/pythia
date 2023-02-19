// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cvx_to_antigen_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CvxToAntigenMap _$$_CvxToAntigenMapFromJson(Map<String, dynamic> json) =>
    _$_CvxToAntigenMap(
      cvxMap: (json['cvxMap'] as List<dynamic>?)
          ?.map((e) => CvxMap.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CvxToAntigenMapToJson(_$_CvxToAntigenMap instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cvxMap', instance.cvxMap?.map((e) => e.toJson()).toList());
  return val;
}

_$_CvxMap _$$_CvxMapFromJson(Map<String, dynamic> json) => _$_CvxMap(
      cvx: json['cvx'] as String?,
      shortDescription: json['shortDescription'] as String?,
      association: (json['association'] as List<dynamic>?)
          ?.map((e) => Association.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CvxMapToJson(_$_CvxMap instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cvx', instance.cvx);
  writeNotNull('shortDescription', instance.shortDescription);
  writeNotNull(
      'association', instance.association?.map((e) => e.toJson()).toList());
  return val;
}

_$_Association _$$_AssociationFromJson(Map<String, dynamic> json) =>
    _$_Association(
      antigen: json['antigen'] as String?,
      associationBeginAge: json['associationBeginAge'] as String?,
      associationEndAge: json['associationEndAge'] as String?,
    );

Map<String, dynamic> _$$_AssociationToJson(_$_Association instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('antigen', instance.antigen);
  writeNotNull('associationBeginAge', instance.associationBeginAge);
  writeNotNull('associationEndAge', instance.associationEndAge);
  return val;
}
