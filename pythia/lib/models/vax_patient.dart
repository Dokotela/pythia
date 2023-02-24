import 'package:fhir/r4.dart' as fhir;

import '../pythia.dart';

class VaxPatient {
  VaxPatient({
    required this.assessmentDate,
    required this.patient,
    required this.conditions,
    required this.immunizations,
    required this.observations,
    required this.vaxes,
  });

  VaxDate get birthDate => VaxDate.fromDateTime(patient.birthDate!.value!);

  VaxPatient copyWith({
    VaxDate? assessmentDate,
    fhir.Patient? patient,
    List<fhir.Condition>? conditions,
    List<fhir.Immunization>? immunizations,
    List<Observation>? observations,
    Map<String, Vaxes>? vaxes,
  }) =>
      VaxPatient(
        assessmentDate: assessmentDate ?? this.assessmentDate,
        patient: patient ?? this.patient,
        conditions: conditions ?? this.conditions,
        immunizations: immunizations ?? this.immunizations,
        observations: observations ?? this.observations,
        vaxes: vaxes ?? this.vaxes,
      );

  final VaxDate assessmentDate;
  final fhir.Patient patient;
  final List<fhir.Condition> conditions;
  final List<fhir.Immunization> immunizations;
  final List<Observation> observations;
  final Map<String, Vaxes> vaxes;
}

class Vaxes {
  Vaxes({
    required this.immunizations,
    required this.series,
  });
  final List<fhir.Immunization> immunizations;
  final List<Series> series;
}
