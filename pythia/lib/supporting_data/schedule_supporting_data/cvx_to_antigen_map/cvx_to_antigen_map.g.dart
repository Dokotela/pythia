// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cvx_to_antigen_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CvxToAntigenMapImpl _$$CvxToAntigenMapImplFromJson(
        Map<String, dynamic> json) =>
    _$CvxToAntigenMapImpl(
      cvxMap: (json['cvxMap'] as List<dynamic>?)
          ?.map((e) => CvxMap.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CvxToAntigenMapImplToJson(
    _$CvxToAntigenMapImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cvxMap', instance.cvxMap?.map((e) => e.toJson()).toList());
  return val;
}

_$CvxMapImpl _$$CvxMapImplFromJson(Map<String, dynamic> json) => _$CvxMapImpl(
      cvx: json['cvx'] as String?,
      shortDescription: json['shortDescription'] as String?,
      association: (json['association'] as List<dynamic>?)
          ?.map((e) => Association.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CvxMapImplToJson(_$CvxMapImpl instance) {
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

_$AssociationImpl _$$AssociationImplFromJson(Map<String, dynamic> json) =>
    _$AssociationImpl(
      antigen: json['antigen'] as String?,
      associationBeginAge: json['associationBeginAge'] as String?,
      associationEndAge: json['associationEndAge'] as String?,
    );

Map<String, dynamic> _$$AssociationImplToJson(_$AssociationImpl instance) {
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
