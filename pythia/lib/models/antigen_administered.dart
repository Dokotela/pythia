import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';
part 'antigen_administered.g.dart';

/// Map of each Antigen and it's associated Immunizations
@riverpod
class AntigenAdministered extends _$AntigenAdministered {
  /// Builder
  @override
  Map<String, List<Immunization>> build() => <String, List<Immunization>>{};

  /// Adds a single immunization
  void addImmunization(Immunization immunization) {
    /// Find the cvx code for the individual vaccine
    final cvx = cvxFromImmunization(immunization);

    /// If it's null, record it as an error
    if (cvx == null) {
      ref
          .read(operationOutcomesProvider.notifier)
          .addError('No CVX Found for immunization ${immunization.id}');
    } else {
      /// Make sure there's a matching CVX code in the CvxMap
      final cvxIndex = scheduleSupportingData.cvxToAntigenMap?.cvxMap
          ?.indexWhere((element) =>
              element.cvx != null &&
              int.tryParse(element.cvx!) == int.tryParse(cvx) &&
              int.tryParse(cvx) != null);

      /// If not, record it as an error
      if (cvxIndex == null || cvxIndex == -1) {
        ref
            .read(operationOutcomesProvider.notifier)
            .addError('The CVX code $cvx was not found in the CvxMap');
      } else {
        /// Select the appropriate entry
        final cvxEntry =
            scheduleSupportingData.cvxToAntigenMap!.cvxMap![cvxIndex];

        /// If there are no associations this is an error (it shouldn't be
        /// because the spreadsheets should always create and association with
        /// the generator, but just in case)
        if (cvxEntry.association == null || cvxEntry.association!.isEmpty) {
          ref.read(operationOutcomesProvider.notifier).addError(
              'There are no Antigen associations with the CVX code $cvx');
        } else {
          for (final entry in cvxEntry.association!) {
            if (entry.antigen != null && !state.keys.contains(entry.antigen)) {
              state[entry.antigen!] = [];
            }
            state[entry.antigen]!.add(immunization);
          }
        }
      }
    }
  }

  /// Adds a list of immunizations
  void addImmunizations(List<Immunization> immunization) =>
      immunization.forEach((element) => addImmunization(element));

  void sortByDate() {
    for (final key in state.keys) {
      state[key]!.sort((a, b) => (a.occurrenceDateTime?.value ?? DateTime(1900))
          .compareTo(b.occurrenceDateTime?.value ?? DateTime(1900)));
    }
  }
}
