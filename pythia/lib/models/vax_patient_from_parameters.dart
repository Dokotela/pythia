import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'vax_patient_from_parameters.g.dart';

@riverpod
class VaxPatientFromParameters extends _$VaxPatientFromParameters {
  @override
  VaxPatient? build(Parameters parameters) {
    DateTime? assessmentDate;
    Patient? patient;
    List<Condition> conditions = <Condition>[];
    List<Immunization> immunizations = <Immunization>[];
    Map<String, Vaxes> vaxes = Map.fromIterable(
      antigenSupportingData,
      key: (item) => item.targetDisease,
      value: (item) => Vaxes(
        immunizations: [],
        series: item.series,
      ),
    );

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
          final immunization = parameter.resource as Immunization;
          immunizations.add(immunization);
          final diseases = diseasesFromImmunization(immunization);
          if (diseases.isEmpty) {
            ref.read(operationOutcomesProvider.notifier).addError(
                'The CVX for immunization ${immunization.id} '
                '(${cvxFromImmunization(immunization) == null ? "null" : cvxFromImmunization(immunization)})'
                ' was not found in the Supporting Data');
          } else {
            for (final disease in diseases) {
              if (!vaxes.keys.contains(disease)) {
                ref.read(operationOutcomesProvider.notifier).addError(
                    'The disease $disease is not included in the Supporting Data');
              } else {
                vaxes[disease]!.immunizations.add(immunization);
              }
            }
          }
        }
      }
    }
    if (patient == null) {
      return null;
    } else {
      List<VaxObservation> observations =
          observationsFromConditions(conditions);
      return VaxPatient(
          assessmentDate: assessmentDate == null
              ? VaxDate.now()
              : VaxDate.fromDateTime(assessmentDate),
          patient: patient,
          conditions: conditions,
          immunizations: immunizations,
          observations: observations,
          vaxes: vaxes);
    }
  }
}
