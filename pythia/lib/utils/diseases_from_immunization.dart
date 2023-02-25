import 'package:fhir/r4.dart';

import '../pythia.dart';

/// Adds a single immunization
List<String> diseasesFromImmunization(Immunization immunization) {
  final diseases = <String>[];

  /// Find the cvx code for the individual vaccine
  final cvx = cvxFromImmunization(immunization);

  /// As long as we find a cvx code
  if (cvx != null) {
    /// Make sure there's a matching CVX code in the CvxMap
    final cvxIndex = scheduleSupportingData.cvxToAntigenMap?.cvxMap?.indexWhere(
        (element) =>
            element.cvx != null &&
            int.tryParse(element.cvx!) == int.tryParse(cvx) &&
            int.tryParse(cvx) != null);

    /// If we find an index for that code in the supporting data
    if (cvxIndex != null && cvxIndex != -1) {
      /// Select the appropriate entry
      final cvxEntry =
          scheduleSupportingData.cvxToAntigenMap!.cvxMap![cvxIndex];

      /// As lon as we find some associations
      if (cvxEntry.association != null && cvxEntry.association!.isNotEmpty) {
        diseases.addAll(
            cvxEntry.association?.map((e) => e.antigen ?? '').toList() ?? []);
      }
    }
  }

  diseases.retainWhere((element) => element != '');
  return diseases;
}


// void sortByDate() {
//   for (final key in state.keys) {
//     state[key]!.sort((a, b) => (a.occurrenceDateTime?.value ?? DateTime(1900))
//         .compareTo(b.occurrenceDateTime?.value ?? DateTime(1900)));
//   }
// }
