import 'package:fhir/r4.dart';

import '../pythia.dart';

class VaxPatient {
  VaxPatient({
    required this.assessmentDate,
    required this.patient,
    required this.immunizations,
    required this.conditions,
    required this.observations,
    required this.allergies,
  });

  VaxDate get birthDate => VaxDate.fromDateTime(patient.birthDate!.value!);

  VaxPatient copyWith({
    VaxDate? assessmentDate,
    Patient? patient,
    List<Condition>? conditions,
    List<Immunization>? immunizations,
    List<VaxObservation>? observations,
    List<AllergyIntolerance>? allergies,
  }) =>
      VaxPatient(
        assessmentDate: assessmentDate ?? this.assessmentDate,
        patient: patient ?? this.patient,
        immunizations: immunizations ?? this.immunizations,
        conditions: conditions ?? this.conditions,
        observations: observations ?? this.observations,
        allergies: allergies ?? this.allergies,
      );

  final VaxDate assessmentDate;
  final Patient patient;
  final List<Immunization> immunizations;
  final List<Condition> conditions;
  final List<VaxObservation> observations;
  final List<AllergyIntolerance> allergies;
}
