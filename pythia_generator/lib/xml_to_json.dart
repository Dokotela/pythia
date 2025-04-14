import 'dart:convert';
import 'dart:io';
import 'package:xml2json/xml2json.dart';

void main() {
  final supportDir = 'pythia_generator/lib/Version_4.61-508/XML';
  final xmlDir = Directory(supportDir);
  Directory(supportDir.replaceAll('XML', 'JSON')).createSync();
  final xmlFiles = xmlDir.listSync().where(
      (file) => file.path.endsWith('.xml'));

  // Create an instance of Xml2Json.
  final transformer = Xml2Json();

  // Define the keys that should always be a list.
  final keysToAlwaysList = [
    'contraindication',
    'seriesDose',
    'age',
    'allowableVaccine',
    'series',
    'preferableVaccine',
    'set',
    'exclusion',
    'clinicalHistory',
    'preferableInterval',
    'inadvertentVaccine',
    'conditionalSkip',
    'seriesAdminGuidance',
    'requiredGender',
    'indication',
    'contraindicatedVaccine',
    'condition',
    'association',
    'liveVirusConflict',
    'vaccineGroupMap',
    'antigen',
    'observation',
    'codedValue',
    'interval',
  ];

  for (final file in xmlFiles) {
    final fileString = File(file.path).readAsStringSync();
    // Parse the XML string.
    transformer.parse(fileString);

    // Convert the parsed XML to JSON using the Parker mode.
    final jsonString = transformer.toParker();

    // Decode the JSON string into a Dart object (Map or List).
    final decodedJson = json.decode(jsonString);

    // Optionally remove null values.
    final cleanedJson = removeNulls(decodedJson);
    // Ensure the specified keys are always treated as lists.
    final finalJson = ensureKeysAreLists(cleanedJson, keysToAlwaysList);

    // Write the resulting JSON to a new file.
    final outputPath = file.path
        .replaceAll('.xml', '.json')
        .replaceAll('XML', 'JSON');
    File(outputPath).writeAsStringSync(jsonPrettyPrint(finalJson), flush: true);
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(dynamic data) => jsonEncoder.convert(data);

/// Recursively removes null values from Maps and Lists.
dynamic removeNulls(dynamic data) {
  if (data is Map<String, dynamic>) {
    final pruned = <String, dynamic>{};
    data.forEach((key, value) {
      final cleanedValue = removeNulls(value);
      if (cleanedValue != null) {
        pruned[key] = cleanedValue;
      }
    });
    return pruned;
  } else if (data is List) {
    return data.map(removeNulls).where((item) => item != null).toList();
  }
  return data;
}

/// Recursively ensures that any keys specified in [keysToAlwaysList]
/// have their values wrapped in a List. If the value is already a List,
/// it is left unchanged.
dynamic ensureKeysAreLists(dynamic data, List<String> keysToAlwaysList, [String? parentKey]) {
  // Define a helper function to decide if a key's value should be forced to be a list.
  bool shouldEnsureAsList(String key, String? parentKey) {
    // Special case: if key is "interval" and its immediate parent is "condition",
    // do not force wrap the value in a list.
    if (key == 'interval' && parentKey == 'condition') {
      return false;
    }
    // For all other cases, if the key is in the list, we want it to be a list.
    return keysToAlwaysList.contains(key);
  }

  if (data is Map<String, dynamic>) {
    final updated = <String, dynamic>{};
    data.forEach((key, value) {
      // Recurse into the value, passing the current key as the parentKey for its children.
      var processedValue = ensureKeysAreLists(value, keysToAlwaysList, key);
      
      // If this key should be forced into a list, and the value is not already one, wrap it.
      if (shouldEnsureAsList(key, parentKey)) {
        if (processedValue is! List) {
          processedValue = [processedValue];
        }
      }
      updated[key] = processedValue;
    });
    return updated;
  } else if (data is List) {
    return data.map((item) => ensureKeysAreLists(item, keysToAlwaysList, parentKey)).toList();
  }
  return data;
}
