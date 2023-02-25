import 'package:fhir/r4.dart';

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
    Patient? patient,
    List<Condition>? conditions,
    List<Immunization>? immunizations,
    List<VaxObservation>? observations,
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
  final Patient patient;
  final List<Condition> conditions;
  final List<Immunization> immunizations;
  final List<VaxObservation> observations;
  final Map<String, Vaxes> vaxes;
}

class Vaxes {
  Vaxes({
    required this.immunizations,
    required this.series,
  });

  final List<Immunization> immunizations;
  final List<Series> series;
}
