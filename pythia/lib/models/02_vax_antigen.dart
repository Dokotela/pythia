import 'package:riverpod/riverpod.dart';

import '../pythia.dart';

class VaxAntigen {
  VaxAntigen._({
    required this.targetDisease,
    required this.vaccineGroupName,
    required this.groups,
    required this.dob,
    required this.groupContraindications,
    required this.vaccineContraindications,
    required this.assessmentDate,
  });

  factory VaxAntigen.fromSeries({
    required List<Series> series,
    required Gender gender,
    required VaxObservations observations,
    required VaxDate dob,
    required VaxDate assessmentDate,
    required List<GroupContraindication> groupContraindications,
    required List<VaccineContraindication> vaccineContraindications,
  }) {
    final Map<String, VaxGroup> groups = <String, VaxGroup>{};
    relevantSeries(gender, series, observations, dob, assessmentDate)
        .forEach((element) {
      final nextGroup = element.selectSeries?.seriesGroup ?? 'none';
      if (!groups.keys.contains(nextGroup)) {
        groups[nextGroup] = VaxGroup(
          targetDisease: series.first.targetDisease!,
          vaccineGroup: nextGroup,
          vaccineGroupName:
              series.first.vaccineGroup ?? series.first.targetDisease!,
          series: [],
          assessmentDate: assessmentDate,
          dob: dob,
        );
      }
      groups[nextGroup]!.newSeries(element);
    });

    return VaxAntigen._(
      targetDisease: series.first.targetDisease!,
      vaccineGroupName:
          series.first.vaccineGroup ?? series.first.targetDisease!,
      groups: groups,
      dob: dob,
      groupContraindications: groupContraindications,
      vaccineContraindications: vaccineContraindications,
      assessmentDate: assessmentDate,
    );
  }

  void newDose(VaxDose dose) {
    for (final key in groups.keys) {
      groups[key]!.newDose(dose);
    }
  }

  void evaluate() {
    for (final key in groups.keys) {
      groups[key]!.evaluate();
    }
  }

  void forecast() {
    /// We do these slightly out of order because they don't impact each other
    /// and it lets me pass the immunity and contraindication during the forcast
    immunity();
    contraindicated();
    if (!contraindication)
      for (final key in groups.keys) {
        groups[key]!.forecast(evidenceOfImmunity, vaccineContraindications);
      }
  }

  void contraindicated() {
    /// Check each of the contraindications (we already ensured they apply
    /// to the patient in a previous step)
    for (final contraindication in groupContraindications) {
      /// If the dates are appropriate to apply to a patient, we note that
      /// this dose is contraindicated, and stop checking
      if (dob.changeIfNotNullElseMin(contraindication.beginAge) <=
              assessmentDate &&
          assessmentDate <
              dob.changeIfNotNullElseMax(contraindication.endAge)) {
        this.contraindication = true;
        break;
      }
    }
  }

  void immunity() {
    final container = ProviderContainer();
    final obsInts = container.read(observationsProvider).codesAsInt;
    final ag = antigenSupportingDataMap[targetDisease];

    /// We check to see if the patient has any listed conditions that could
    /// make them immune
    final index = ag?.immunity?.clinicalHistory?.indexWhere((element) {
      final code = element.guidelineCode == null
          ? null
          : int.tryParse(element.guidelineCode!);
      if (code == null) {
        return false;
      } else {
        return obsInts?.contains(code) ?? false;
      }
    });

    /// If they do, mark it
    if (index != null && index != -1) {
      evidenceOfImmunity = true;
    } else {
      /// Otherwise, we check and see if their birthdate affords them immunity
      final immunityBirthdate = ag?.immunity?.dateOfBirth?.immunityBirthDate;
      if (dob <
          (immunityBirthdate == null
              ? VaxDate.max()
              : VaxDate.fromStringMax(
                  ag!.immunity!.dateOfBirth!.immunityBirthDate!))) {
        /// If it does, then we have to check and see if they have
        /// any exclusion criteria
        final index =
            ag?.immunity?.dateOfBirth?.exclusion?.indexWhere((element) {
          final code = element.exclusionCode == null
              ? null
              : int.tryParse(element.exclusionCode!);
          if (code == null) {
            return false;
          } else {
            return obsInts?.contains(code) ?? false;
          }
        });

        /// If we couldn't find an exclusion criteria
        if (index == null || index == -1) {
          /// Then the one last thing we have to look for is the patient's country
          // TODO(Dokotela): check on birth countries
          /// Until I include birth countries, we're going to assume that it's true
          evidenceOfImmunity = true;
        }
      }
    }
  }

  String targetDisease;
  String vaccineGroupName;
  Map<String, VaxGroup> groups;
  VaxDate dob;
  bool evidenceOfImmunity = false;
  List<GroupContraindication> groupContraindications;
  List<VaccineContraindication> vaccineContraindications;
  VaxDate assessmentDate;
  bool contraindication = false;
}
