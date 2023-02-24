import 'package:pythia/utils/gender_from_patient.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'patient_series.g.dart';

@riverpod
class PatientSeries extends _$PatientSeries {
  @override
  Map<String, List<Series>> build() {
    final patientSeries = <String, List<Series>>{};
    for (final ag in antigenSupportingData) {
      if (ag.targetDisease == null) {
        ref
            .read(operationOutcomesProvider.notifier)
            .addError('No target disease for antigen ${ag.vaccineGroup}');
      } else {
        patientSeries[ag.targetDisease!] = ag.series ?? <Series>[];
      }
    }
    return patientSeries;
  }

  void byGender() {
    final gender = genderFromPatient(ref.read(vaxPatientProvider));
    for (final ag in state.keys) {
      final curList = state[ag]!.toList();
      curList.retainWhere((element) =>
          element.requiredGender == null ||
          element.requiredGender!.isEmpty ||
          element.requiredGender!.contains(gender));
      state[ag] = curList;
    }
  }

  void byType() {
    for (final ag in state.keys) {
      /// Find the current list of series by antigen
      final currentSeriesList = state[ag]!.toList();

      /// Keep each series where....
      currentSeriesList.retainWhere((series) {
        /// If it's a Standard or Evaluation Only Series
        if (series.seriesType == 'Standard' ||
            series.seriesType == 'Evaluation Only') {
          return true;
        }

        /// If it's a Risk group
        else if (series.seriesType == 'Risk') {
          /// Get the list of conditions that the patient has, for Vaccine
          /// Logic these are known as Conditions
          final obsList = series.indication
              ?.map((e) => e.observationCode?.code ?? '')
              .toList();

          /// If the obsList is null, the patient doesn't meet requirements for
          /// risk series
          if (obsList == null) {
            return false;
          } else {
            /// Because in the above mapping, we inserted a '' if there are any
            /// nulls, so we remove those
            obsList.retainWhere((e) => e != '');

            /// If that leaves an empty list, there are no applicable conditions
            if (obsList.isEmpty) {
              return false;
            }

            /// Otherwise, we look to see if there is an observation from the
            /// list of the patient's observations, that is also included as
            /// one of the indications for this series
            else {
              final obsIndex = obsList.indexWhere((obsCode) {
                final indicationIndex = series.indication?.indexWhere(
                    (indication) =>
                        indication.observationCode?.code != null &&
                        indication.observationCode?.code == indication);
                if (indicationIndex == null || indicationIndex == -1) {
                  return false;
                } else {
                  final dob = ref.read(vaxPatientProvider.notifier).birthDate();
                  if (dob == null) {
                    return false;
                  } else {
                    return dob.minIfNull(
                                series.indication![indicationIndex].beginAge) <=
                            ref.read(assessmentDateProvider) &&
                        ref.read(assessmentDateProvider) <
                            dob.maxIfNull(
                                series.indication![indicationIndex].endAge);
                  }
                }
              });
              return obsIndex != -1;
            }
          }
        }

        /// If it's not one fo the required types, don't keep it, and return
        /// an error
        else {
          ref.read(operationOutcomesProvider.notifier).addError(
              'Series for $ag entitled ${series.seriesName} has an inappropriate Type');
          return false;
        }
      });
      state[ag] = currentSeriesList;
    }
  }
}
