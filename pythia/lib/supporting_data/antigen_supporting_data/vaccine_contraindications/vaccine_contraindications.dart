import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../pythia.dart';

part 'vaccine_contraindications.freezed.dart';
part 'vaccine_contraindications.g.dart';

@freezed
class VaccineContraindications with _$VaccineContraindications {
  VaccineContraindications._();
  factory VaccineContraindications({
    List<VaccineContraindication>? contraindication,
  }) = _VaccineContraindications;

  factory VaccineContraindications.fromJson(Map<String, dynamic> json) =>
      _$VaccineContraindicationsFromJson(json);
}

@freezed
class VaccineContraindication with _$VaccineContraindication {
  VaccineContraindication._();
  factory VaccineContraindication({
    Obs? observationCode,
    String? observationTitle,
    String? contraindicationText,
    String? contraindicationGuidance,
    List<Vaccine>? contraindicatedVaccine,
  }) = _VaccineContraindication;

  factory VaccineContraindication.fromJson(Map<String, dynamic> json) =>
      _$VaccineContraindicationFromJson(json);
}
