import 'package:fhir/r4.dart';
import 'package:pythia/providers/eval_immunization.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'assessment.g.dart';

@riverpod
class Assessment extends _$Assessment {
  @override
  VaxPatient build() => VaxPatient(
        assessmentDate: VaxDate(1900, 01, 01),
        immunizations: [],
        patient: Patient(),
        conditions: [],
        observations: [],
        allergies: [],
      );

  void fromParameters(Parameters parameters) {
    final patient = patientFromParameters(parameters);
    if (patient == null) {
      ref
          .read(operationOutcomesProvider.notifier)
          .addError('No Patient found in Parameters');
    } else if (patient.patient.birthDate == null ||
        !patient.patient.birthDate!.isValid) {
      ref
          .read(operationOutcomesProvider.notifier)
          .addError('Patient does not have a birthdate');
    } else {
      state = patient;

      for (final disease in state.vaxes.keys) {
        state.vaxes[disease]!.immForEval.sort((a, b) => (ref
            .read(evalImmunizationProvider(a))
            .dateGiven!
            .compareTo(ref.read(evalImmunizationProvider(b)).dateGiven!)));
        relevantSeries(
          genderFromPatient(state.patient),
          state.vaxes[disease]!.series.toList(),
          VaxDate.fromDateTime(state.patient.birthDate!.value!),
          state.assessmentDate,
        );
      }
    }
  }

  VaxPatient? patientFromParameters(Parameters parameters) {
    DateTime? assessmentDate;
    Patient? patient;
    List<Immunization> immunizations = <Immunization>[];
    List<Condition> conditions = <Condition>[];
    List<AllergyIntolerance> allergies = <AllergyIntolerance>[];
    Map<String, Vaxes> vaxes = Map.fromIterable(
      antigenSupportingData,
      key: (item) => item.targetDisease,
      value: (item) => Vaxes(
        immForEval: [],
        substandard: [],
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
        } else if (parameter.resource is AllergyIntolerance) {
          allergies.add(parameter.resource as AllergyIntolerance);
        } else if (parameter.resource is Immunization) {
          final immunization = (parameter.resource as Immunization)
              .newIdIfNoId() as Immunization;
          immunizations.add(immunization);
          final immEval = ImmEval.fromImmunization(immunization);
          ref
              .read(evalImmunizationProvider(immEval.immunization.id!).notifier)
              .fromImmEval(immEval);
          if (immEval.cvx == null) {
            ref.read(operationOutcomesProvider.notifier).addError(
                'There was no CVX code for immunization ${immunization.id}');
          } else {
            final diseases = diseasesFromImmunization(immEval.cvx!);
            if (diseases.isEmpty) {
              ref.read(operationOutcomesProvider.notifier).addError(
                  'The CVX for immunization ${immunization.id} (${immEval.cvx}) '
                  'was not found in the Supporting Data');
            } else {
              for (final disease in diseases) {
                if (!vaxes.keys.contains(disease)) {
                  ref.read(operationOutcomesProvider.notifier).addError(
                      'The disease $disease is not included in the Supporting Data');
                } else {
                  vaxes[disease]!.newImmunization(
                    immEval.immunization.id!,
                    immEval.substandard,
                  );
                }
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
      );
    }
  }

  // void evaluation() {
  //   state.vaxes.forEach((key, value) {
  //     value.series;
  //   });
  // }
}