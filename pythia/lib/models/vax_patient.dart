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
    required this.immForEval,
    required this.substandard,
    required this.series,
  });

  void newImmunization(
    Immunization immunization,
    bool isSubstandard,
    VaxDate dateGiven,
    String cvx,
  ) {
    /// add immunization to all immunizations
    immunizations.add(immunization);

    if (isSubstandard) {
      substandard.add(immunization);
    } else {
      immForEval.add(SimpleVax(dateGiven, cvx));
    }
  }

  /// List of all immunizations adminstered
  final List<Immunization> immunizations;

  /// List of all immunizations that can be evaluated, this is, they were not
  /// expired when given, and they are not subpotent, for whatever reason
  final List<SimpleVax> immForEval;

  /// If they were given after they were expired or are subpotent, they are
  /// not added to the immForEval list, they are instead added to this list
  final List<Immunization> substandard;

  /// This is the list of all of the series for a particular antigen
  final List<Series> series;
}
