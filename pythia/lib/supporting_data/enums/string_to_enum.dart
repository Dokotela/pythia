import 'enums.dart';

Enum? stringToEnum<T>(Type enumType, String value) {
  switch (enumType) {
    case Binary:
      return binaryStringToEnum[value];

    case ConditionType:
      return conditionTypeStringToEnum[value];

    case DoseCountLogic:
      return doseCountLogicStringToEnum[value];

    case DoseNumber:
      return doseNumberStringToEnum[value];

    case DoseType:
      return doseTypeStringToEnum[value];

    case EquivalentSeriesGroups:
      return equivalentSeriesGroupsStringToEnum[value];

    case FromPrevious:
      return fromPreviousStringToEnum[value];

    case FromTarget:
      return fromTargetStringToEnum[value];

    case Gender:
      return genderStringToEnum[value];

    case SeriesGroup:
      return seriesGroupStringToEnum[value];

    case SeriesGroupName:
      return seriesGroupNameStringToEnum[value];

    case SeriesPreference:
      return seriesPreferenceStringToEnum[value];

    case SeriesPriority:
      return seriesPriorityStringToEnum[value];

    case SeriesType:
      return seriesTypeStringToEnum[value];

    case SkipContext:
      return skipContextStringToEnum[value];

    default:
      return null;
  }
}