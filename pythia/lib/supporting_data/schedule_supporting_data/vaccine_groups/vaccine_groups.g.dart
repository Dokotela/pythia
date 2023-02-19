// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineGroups _$$_VaccineGroupsFromJson(Map<String, dynamic> json) =>
    _$_VaccineGroups(
      vaccineGroup: (json['vaccineGroup'] as List<dynamic>?)
          ?.map((e) => VaccineGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaccineGroupsToJson(_$_VaccineGroups instance) =>
    <String, dynamic>{
      'vaccineGroup': instance.vaccineGroup,
    };

_$_VaccineGroup _$$_VaccineGroupFromJson(Map<String, dynamic> json) =>
    _$_VaccineGroup(
      name: $enumDecodeNullable(_$VaccineGroupNameEnumMap, json['name']),
      administerFullVaccineGroup: $enumDecodeNullable(
          _$BinaryEnumMap, json['administerFullVaccineGroup']),
    );

Map<String, dynamic> _$$_VaccineGroupToJson(_$_VaccineGroup instance) =>
    <String, dynamic>{
      'name': _$VaccineGroupNameEnumMap[instance.name],
      'administerFullVaccineGroup':
          _$BinaryEnumMap[instance.administerFullVaccineGroup],
    };

const _$VaccineGroupNameEnumMap = {
  VaccineGroupName.cholera: 'Cholera',
  VaccineGroupName.covid_19: 'COVID-19',
  VaccineGroupName.dtap_tdap_td: 'DTaP/Tdap/Td',
  VaccineGroupName.ebola: 'Ebola',
  VaccineGroupName.hepA: 'HepA',
  VaccineGroupName.hepB: 'HepB',
  VaccineGroupName.hib: 'Hib',
  VaccineGroupName.hpv: 'HPV',
  VaccineGroupName.influenza: 'Influenza',
  VaccineGroupName.japaneseEncephalitis: 'Japanese Encephalitis',
  VaccineGroupName.meningococcal: 'Meningococcal',
  VaccineGroupName.meningococcalB: 'Meningococcal B',
  VaccineGroupName.mmr: 'MMR',
  VaccineGroupName.pneumococcal: 'Pneumococcal',
  VaccineGroupName.polio: 'Polio',
  VaccineGroupName.rabies: 'Rabies',
  VaccineGroupName.rotavirus: 'Rotavirus',
  VaccineGroupName.typhoid: 'Typhoid',
  VaccineGroupName.varicella: 'Varicella',
  VaccineGroupName.yellowFever: 'Yellow Fever',
  VaccineGroupName.zoster: 'Zoster',
};

const _$BinaryEnumMap = {
  Binary.yes: 'Yes',
  Binary.no: 'No',
  Binary.na: '',
};
