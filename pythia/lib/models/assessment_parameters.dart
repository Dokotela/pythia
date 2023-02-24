import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'assessment_parameters.g.dart';

@riverpod
class AssessmentParameters extends _$AssessmentParameters {
  @override
  VaxPatient? build(Parameters parameters) {
    DateTime? assessmentDate;
    Patient? patient;
    List<Condition> conditions = <Condition>[];
    List<Immunization> immunizations = <Immunization>[];
    for (final parameter in parameters.parameter ?? <ParametersParameter>[]) {
      if (parameter.name == 'assesmentDate' &&
          parameter.valueDate != null &&
          parameter.valueDate!.isValid) {
        assessmentDate = parameter.valueDate!.value!;
      } else if (parameter.resource != null) {
        if (parameter.resource is Patient) {
          patient = parameter.resource as Patient;
        } else if (parameter.resource is Condition) {
          conditions.add(parameter.resource as Condition);
        } else if (parameter.resource is Immunization) {
          immunizations.add(parameter.resource as Immunization);
        }
      }
    }
    List<VaxObservation> observations = observationsFromConditions(conditions);
    return patient == null
        ? null
        : VaxPatient(
            assessmentDate: assessmentDate == null
                ? VaxDate.now()
                : VaxDate.fromDateTime(assessmentDate),
            patient: patient,
            conditions: conditions,
            immunizations: immunizations,
            observations: observations,
            vaxes: {});
  }

  List<VaxObservation> observationsFromConditions(List<Condition> conditions) {
    final observations = <VaxObservation>[];
    // TODO(Dokotela) look at other systems besides Snomed
    for (var condition in conditions) {
      final snomedIndex = condition.code?.coding?.indexWhere(
          (element) => element.system == FhirUri('http://snomed.info/sct'));
      final snomedCode = snomedIndex == null || snomedIndex == -1
          ? null
          : condition.code!.coding![snomedIndex].code;
      if (snomedCode != null) {
        final obsCodeIndex = scheduleSupportingData.observations?.observation
            ?.indexWhere((element) {
          final snomedCodeIndex = element.codedValues?.codedValue?.indexWhere(
              (element) =>
                  element.codeSystem == 'SNOMED' && element.code == snomedCode);
          return !(snomedCodeIndex == null || snomedCodeIndex == -1);
        });
        if (obsCodeIndex != null && obsCodeIndex != -1) {
          observations.add(
              scheduleSupportingData.observations!.observation![obsCodeIndex]);
        }
      }
    }
    return observations;
  }
}
