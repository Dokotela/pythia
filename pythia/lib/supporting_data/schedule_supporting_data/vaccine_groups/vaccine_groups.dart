import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../pythia.dart';

part 'vaccine_groups.freezed.dart';
part 'vaccine_groups.g.dart';

@freezed
class VaccineGroups with _$VaccineGroups {
  factory VaccineGroups({
    List<VaccineGroup>? vaccineGroup,
  }) = _VaccineGroups;
  VaccineGroups._();

  factory VaccineGroups.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupsFromJson(json);
}

@freezed
class VaccineGroup with _$VaccineGroup {
  factory VaccineGroup({
    String? name,
    Binary? administerFullVaccineGroup,
  }) = _VaccineGroup;
  VaccineGroup._();

  factory VaccineGroup.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupFromJson(json);
}
