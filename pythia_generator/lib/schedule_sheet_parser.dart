import 'dart:io';
import 'package:excel/excel.dart';
import 'package:pythia/pythia.dart';

/// Fully fleshed-out parser for Schedule Supporting Data.
/// It populates ScheduleSupportingData with:
/// - liveVirusConflicts
/// - vaccineGroups
/// - vaccineGroupToAntigenMap
/// - cvxToAntigenMap
/// - observations
class ScheduleSheetParser {
  /// Reads a [excelPath] file and returns a [ScheduleSupportingData] object
  /// with no placeholders or stub methods.
  ScheduleSupportingData parseFile(String excelPath) {
    final bytes = File(excelPath).readAsBytesSync();
    final excel = Excel.decodeBytes(bytes);

    var scheduleData = ScheduleSupportingData();

    // Iterate over each sheet in the workbook
    for (final sheetName in excel.tables.keys) {
      final sheet = excel.tables[sheetName]!;
      // Convert each row into a list of strings
      final rows = sheet.rows
          .map((row) => row.map((cell) => cell?.value?.toString() ?? '').toList())
          .toList();

      // 1. Live Virus Conflicts
      if (sheetName.contains('Live Virus Conflicts')) {
        final parsedConflicts = _parseLiveVirusConflicts(rows);
        scheduleData = scheduleData.copyWith(liveVirusConflicts: parsedConflicts);
      }
      // 2. Vaccine Groups
      else if (sheetName.contains('Vaccine Groups')) {
        final parsedVaccineGroups = _parseVaccineGroups(rows);
        scheduleData = scheduleData.copyWith(vaccineGroups: parsedVaccineGroups);
      }
      // 3. Vaccine Group to Antigen Map
      else if (sheetName.contains('Vaccine Group to Antigen Map')) {
        final groupMaps = _parseVaccineGroupMap(rows);
        scheduleData = scheduleData.copyWith(
          vaccineGroupToAntigenMap: scheduleData.vaccineGroupToAntigenMap
              ?.copyWith(vaccineGroupMap: groupMaps) ??
              VaccineGroupToAntigenMap(vaccineGroupMap: groupMaps),
        );
      }
      // 4. CVX to Antigen Map
      else if (sheetName.contains('CVX to Antigen Map')) {
        final cvxMaps = _parseCVXToAntigenMap(rows);
        scheduleData = scheduleData.copyWith(
          cvxToAntigenMap: scheduleData.cvxToAntigenMap
              ?.copyWith(cvxMap: cvxMaps) ??
              CvxToAntigenMap(cvxMap: cvxMaps),
        );
      }
      // 5. Observations (or Conditions)
      else if (sheetName.contains('Observations') ||
          sheetName.contains('Conditions')) {
        final obsList = _parseObservations(rows);
        scheduleData = scheduleData.copyWith(
          observations: scheduleData.observations
              ?.copyWith(observation: obsList) ??
              VaxObservations(observation: obsList),
        );
      }
      // If there are other sheets that don't map to your model, ignore them
    }

    return scheduleData;
  }

  /// -----------------------------------------------------------------------
  /// 1) Parse "Live Virus Conflicts" sheet
  /// -----------------------------------------------------------------------
  ///
  /// Expects rows with columns:
  /// [0] previous vaccineType
  /// [1] previous cvx
  /// [2] current vaccineType
  /// [3] current cvx
  /// [4] conflictBeginInterval
  /// [5] minConflictEndInterval
  /// [6] conflictEndInterval
  LiveVirusConflicts _parseLiveVirusConflicts(List<List<String>> rows) {
    final conflictList = <LiveVirusConflict>[];

    for (final row in rows) {
      // Skip headers or completely empty rows
      if (row.isEmpty ||
          row[0].trim().isEmpty ||
          row[0].toLowerCase().contains('previous')) {
        continue;
      }

      final previousVac = Vaccine(
        vaccineType: row[0],
        cvx: row.length > 1 ? row[1] : '',
      );
      final currentVac = Vaccine(
        vaccineType: row.length > 2 ? row[2] : '',
        cvx: row.length > 3 ? row[3] : '',
      );
      final conflictBeginInterval = row.length > 4 ? row[4] : '';
      final minConflictEndInterval = row.length > 5 ? row[5] : '';
      final conflictEndInterval = row.length > 6 ? row[6] : '';

      final conflict = LiveVirusConflict(
        previous: previousVac,
        current: currentVac,
        conflictBeginInterval: conflictBeginInterval,
        minConflictEndInterval: minConflictEndInterval,
        conflictEndInterval: conflictEndInterval,
      );
      conflictList.add(conflict);
    }

    return LiveVirusConflicts(liveVirusConflict: conflictList);
  }

  /// -----------------------------------------------------------------------
  /// 2) Parse "Vaccine Groups" sheet
  /// -----------------------------------------------------------------------
  ///
  /// Expects rows with columns:
  /// [0] group name
  /// [1] administerFullVaccineGroup (Yes/No or some Binary)
  VaccineGroups _parseVaccineGroups(List<List<String>> rows) {
    final vgList = <VaccineGroup>[];

    for (final row in rows) {
      // Skip headers or empty
      if (row.isEmpty ||
          row[0].trim().isEmpty ||
          row[0].toLowerCase().contains('name')) {
        continue;
      }
      final name = row[0];
      final adminFull = row.length > 1 ? row[1] : '';
      vgList.add(
        VaccineGroup(
          name: name,
          administerFullVaccineGroup: Binary.fromJson(adminFull),
        ),
      );
    }
    return VaccineGroups(vaccineGroup: vgList);
  }

  /// -----------------------------------------------------------------------
  /// 3) Parse "Vaccine Group to Antigen Map" sheet
  /// -----------------------------------------------------------------------
  ///
  /// Each row has:
  /// [0] groupName
  /// [1..] list of antigens
  List<VaccineGroupMap> _parseVaccineGroupMap(List<List<String>> rows) {
    final groupMaps = <VaccineGroupMap>[];

    for (final row in rows) {
      if (row.isEmpty ||
          row[0].trim().isEmpty ||
          row[0].toLowerCase().contains('name')) {
        continue;
      }

      final groupName = row[0];
      // The remaining columns are antigens
      final antigens = row.sublist(1).where((val) => val.trim().isNotEmpty).toList();

      groupMaps.add(
        VaccineGroupMap(name: groupName, antigen: antigens.cast<String>()),
      );
    }

    return groupMaps;
  }

  /// -----------------------------------------------------------------------
  /// 4) Parse "CVX to Antigen Map" sheet
  /// -----------------------------------------------------------------------
  ///
  /// Each row has:
  /// [0] cvx
  /// [1] shortDescription
  /// [2] an antigen
  /// [3] associationBeginAge
  /// [4] associationEndAge
  ///
  /// If your data has multiple antigens per CVX row, you'll need to adapt
  /// for grouping them. This example assumes a single antigen per row.
  List<CvxMap> _parseCVXToAntigenMap(List<List<String>> rows) {
    final cvxMapList = <CvxMap>[];

    for (final row in rows) {
      if (row.isEmpty ||
          row[0].trim().isEmpty ||
          row[0].toLowerCase().contains('cvx')) {
        continue;
      }

      final cvx = row[0];
      final shortDesc = row.length > 1 ? row[1] : '';
      final antigenVal = row.length > 2 ? row[2] : '';
      final beginAge = row.length > 3 ? row[3] : null;
      final endAge = row.length > 4 ? row[4] : null;

      // Build the association
      // If your data can have multiple antigens in a single row,
      // adapt as needed. Here, we treat it as a single [antigen].
      final assoc = <Association>[
        Association(
          // We store [antigenVal] in a List<String> because your class says "final List<String>? antigen"
          antigen: [antigenVal],
          associationBeginAge: beginAge,
          associationEndAge: endAge,
        ),
      ];

      cvxMapList.add(
        CvxMap(
          cvx: cvx,
          shortDescription: shortDesc,
          association: assoc,
        ),
      );
    }

    return cvxMapList;
  }

  /// -----------------------------------------------------------------------
  /// 5) Parse "Observations"/"Conditions" sheet
  /// -----------------------------------------------------------------------
  ///
  /// Expects rows with columns:
  /// [0] observationCode
  /// [1] observationTitle
  /// [2] group
  /// [3] indicationText
  /// [4] contraindicationText
  /// [5] clarifyingText
  /// [6..] repeated sets of (code, codeSystem, text) => codedValue
  List<VaxObservation> _parseObservations(List<List<String>> rows) {
    final obsList = <VaxObservation>[];

    for (final row in rows) {
      // Skip empty row or header row
      if (row.isEmpty ||
          row[0].trim().isEmpty ||
          row[0].toLowerCase().contains('observationcode')) {
        continue;
      }

      final obsCode = row[0].trim();
      final obsTitle = row.length > 1 ? row[1].trim() : '';
      final group = row.length > 2 ? row[2].trim() : '';
      final indication = row.length > 3 ? row[3].trim() : '';
      final contra = row.length > 4 ? row[4].trim() : '';
      final clarify = row.length > 5 ? row[5].trim() : '';

      // Starting from column 6 onward, parse coded values in sets of 3 columns:
      // [6] => code
      // [7] => codeSystem
      // [8] => text
      // Then [9] => code, [10] => codeSystem, [11] => text, etc.
      final codedVals = <CodedValue>[];
      if (row.length > 6) {
        // We have extra columns
        // We'll parse them in groups of 3
        // i.e. index 6..8 is one codedValue, 9..11 is next, etc.
        final extraCols = row.sublist(6);
        for (var i = 0; i < extraCols.length; i += 3) {
          // If we don’t have enough columns for a full set, break
          if (i + 2 >= extraCols.length) break;
          final code = extraCols[i].trim();
          final codeSystem = extraCols[i + 1].trim();
          final text = extraCols[i + 2].trim();
          // Only add if we have something meaningful
          if (code.isNotEmpty || codeSystem.isNotEmpty || text.isNotEmpty) {
            codedVals.add(
              CodedValue(
                code: code.isNotEmpty ? code : null,
                codeSystem: codeSystem.isNotEmpty ? codeSystem : null,
                text: text.isNotEmpty ? text : null,
              ),
            );
          }
        }
      }

      // Wrap them in a CodedValues object if not empty
      final codedValues = codedVals.isNotEmpty ? CodedValues(codedValue: codedVals) : null;

      // Build the observation
      final observation = VaxObservation(
        observationCode: obsCode,
        observationTitle: obsTitle,
        group: group,
        indicationText: indication,
        contraindicationText: contra,
        clarifyingText: clarify,
        codedValues: codedValues,
        period: null, // If you parse a "period" from columns, handle it here
      );

      obsList.add(observation);
    }

    return obsList;
  }
}
