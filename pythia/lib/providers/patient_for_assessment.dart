import 'package:fhir/r5.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'patient_for_assessment.g.dart';

@riverpod
class PatientForAssessment extends _$PatientForAssessment {
  @override
  VaxPatient build(Parameters parameters) {
    final VaxPatient? patient = patientFromParameters(parameters);
    if (patient == null) {
      throw Exception('Patient or birthdate not found');
    }
    return patient;
  }

  VaxPatient? patientFromParameters(Parameters parameters) {
    DateTime? assessmentDate;
    Patient? patient;
    VaxDate? birthdate;
    final List<Immunization> immunizations = <Immunization>[];
    final List<Condition> conditions = <Condition>[];
    final List<AllergyIntolerance> allergies = <AllergyIntolerance>[];
    final List<VaxDose> pastDoses = <VaxDose>[];

    parameters.parameter?.forEach((ParametersParameter parameter) {
      if (parameter.name == 'assessmentDate' &&
          (parameter.valueDate?.isValid ?? false)) {
        assessmentDate = parameter.valueDate!.value;
      } else if (parameter.resource != null) {
        switch (parameter.resource) {
          case Patient _:
            {
              patient = parameter.resource as Patient?;
              birthdate = (patient?.birthDate?.isValid ?? false)
                  ? VaxDate.fromDateTime(patient!.birthDate!.value)
                  : null;
              break;
            }
          case Condition _:
            {
              conditions.add(parameter.resource! as Condition);
              break;
            }
          case AllergyIntolerance _:
            {
              allergies.add(parameter.resource! as AllergyIntolerance);
              break;
            }
          case Immunization _:
            {
              final Immunization immunization =
                  parameter.resource! as Immunization;
              immunizations.add(immunization);
              pastDoses.add(VaxDose.fromImmunization(
                  immunization, birthdate ?? VaxDate(1900, 1, 1)));
              break;
            }
          default:
            break;
        }
      }
    });

    if (patient == null) {
      ref
          .read(operationOutcomesProvider.notifier)
          .addError('No Patient was found in the parameters');
      return null;
    } else {
      return _createVaxPatient(patient!, assessmentDate, birthdate, conditions,
          immunizations, allergies, pastDoses);
    }
  }

  VaxPatient _createVaxPatient(
      Patient patient,
      DateTime? assessmentDate,
      VaxDate? birthdate,
      List<Condition> conditions,
      List<Immunization> immunizations,
      List<AllergyIntolerance> allergies,
      List<VaxDose> pastDoses) {
    final List<VaxObservation> observations = observationsFromConditions(
        conditions, birthdate ?? VaxDate(1900, 01, 01));
    return VaxPatient(
      assessmentDate: assessmentDate == null
          ? VaxDate.now()
          : VaxDate.fromDateTime(assessmentDate),
      birthdate: birthdate ?? VaxDate(1900, 01, 01),
      patient: patient,
      gender: genderFromPatient(patient),
      conditions: conditions,
      immunizations: immunizations,
      observations: VaxObservations(observation: observations),
      allergies: allergies,
      pastDoses: pastDoses,
    );
  }
}
