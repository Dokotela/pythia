import 'package:fhir/primitive_types/primitive_types.dart';

class VaxDate extends DateTime {
  VaxDate(int year, int month, int day) : super(year, month, day);

  VaxDate.fromDateTime(DateTime dateTime)
      : super(dateTime.year, dateTime.month, dateTime.day);

  VaxDate.fromStringMax(String date)
      : super(
          DateTime.tryParse(date)?.year ?? 2999,
          DateTime.tryParse(date)?.month ?? 12,
          DateTime.tryParse(date)?.day ?? 31,
        );

  VaxDate.fromStringMin(String date)
      : super(
          DateTime.tryParse(date)?.year ?? 1900,
          DateTime.tryParse(date)?.month ?? 01,
          DateTime.tryParse(date)?.day ?? 01,
        );

  VaxDate.fromJson(String date)
      : super(
          DateTime.parse(date).year,
          DateTime.parse(date).month,
          DateTime.parse(date).day,
        );

  VaxDate.fromMMDDYYYYMax(String date)
      : super(
          int.tryParse(date.split('/')[2]) ??
              int.tryParse(date.split('-')[2]) ??
              2999,
          int.tryParse(date.split('/')[0]) ??
              int.tryParse(date.split('-')[0]) ??
              12,
          int.tryParse(date.split('/')[1]) ??
              int.tryParse(date.split('-')[1]) ??
              31,
        );

  VaxDate.fromMMDDYYYYMin(String date)
      : super(
          int.tryParse(date.split('/')[2]) ??
              int.tryParse(date.split('-')[2]) ??
              1900,
          int.tryParse(date.split('/')[0]) ??
              int.tryParse(date.split('-')[0]) ??
              01,
          int.tryParse(date.split('/')[1]) ??
              int.tryParse(date.split('-')[1]) ??
              01,
        );

  VaxDate.fromYYYYMMDDMax(String date)
      : super(
          int.tryParse(date.substring(0, 4)) ?? 2999,
          int.tryParse(date.substring(4, 6)) ?? 12,
          int.tryParse(date.substring(6, 8)) ?? 31,
        );

  VaxDate.fromYYYYMMDDMin(String date)
      : super(
          int.tryParse(date.substring(0, 4)) ?? 1900,
          int.tryParse(date.substring(4, 6)) ?? 01,
          int.tryParse(date.substring(6, 8)) ?? 01,
        );

  // VaxDate.fromNullableString(String? date) :
  //     date == null || date == '' ?
  //     super(
  //       this.year,
  //       this.month, this.day,) :  VaxDate.fromYYYYMMDD(date);

  VaxDate.now() : super.now();

  VaxDate.min() : super(1900, 1, 1);

  VaxDate.max() : super(2999, 12, 31);

  String toString() => '$year/$month/$day';

  String toJson() => this.toString();

  DateTime toDateTime() => DateTime.parse(toString());

  FhirDateTime toFhirDateTime() => FhirDateTime(toDateTime());

  FhirDate toFhirDate() => FhirDate(toDateTime());

  VaxDate.minIfNullString(String? date)
      : super(
          date == null ? 1900 : DateTime.tryParse(date)?.year ?? 1900,
          date == null ? 01 : DateTime.tryParse(date)?.month ?? 01,
          date == null ? 01 : DateTime.tryParse(date)?.day ?? 01,
        );

  VaxDate.minIfNullDateTime(DateTime? date)
      : super(
          date == null ? 1900 : date.year,
          date == null ? 01 : date.month,
          date == null ? 01 : date.day,
        );

  VaxDate.maxIfNullString(String? date)
      : super(
          date == null ? 2999 : DateTime.tryParse(date)?.year ?? 2999,
          date == null ? 12 : DateTime.tryParse(date)?.month ?? 12,
          date == null ? 31 : DateTime.tryParse(date)?.day ?? 31,
        );

  VaxDate.maxIfNullDateTime(DateTime? date)
      : super(
          date == null ? 2999 : date.year,
          date == null ? 12 : date.month,
          date == null ? 31 : date.day,
        );
  bool operator <(VaxDate vaxDate) => (DateTime(year, month, day)
      .isBefore(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  bool operator >(VaxDate vaxDate) => (DateTime(year, month, day)
      .isAfter(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  bool operator <=(VaxDate vaxDate) => (DateTime(year, month, day)
          .isBefore(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)) ||
      DateTime(year, month, day).isAtSameMomentAs(
          DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  bool operator >=(VaxDate vaxDate) => (DateTime(year, month, day)
          .isAfter(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)) ||
      DateTime(year, month, day).isAtSameMomentAs(
          DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  bool isEqualTo(VaxDate vaxDate) => (DateTime(year, month, day)
      .isAtSameMomentAs(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  VaxDate change(String howMuch) =>
      howMuch == '' ? this : _parseDateString(howMuch);

  VaxDate changeIfNotNullElse(String? howMuch, VaxDate otherwise) =>
      howMuch == null || howMuch == '' ? otherwise : change(howMuch);

  VaxDate changeIfNotNullElseMax(String? howMuch) =>
      changeIfNotNullElse(howMuch, VaxDate.max());

  VaxDate changeIfNotNullElseMin(String? howMuch) =>
      changeIfNotNullElse(howMuch, VaxDate.min());

  VaxDate _parseDateString(String change) {
    var years = 0, months = 0, weeks = 0, days = 0, posNeg = 1;
    var time = change.split(' ');
    for (var i = 0; i < time.length; i++) {
      if (i > 1) {
        if (time[i - 2] == '-') {
          posNeg = -1;
        } else {
          posNeg = 1;
        }
      }
      if (time[i].contains('year')) {
        years += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
      if (time[i].contains('month')) {
        months += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
      if (time[i].contains('week')) {
        weeks += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
      if (time[i].contains('day')) {
        days += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
    }
    return _calculateTime(years, months, 7 * weeks + days);
  }

  VaxDate _calculateTime(int years, int months, int days) {
    // var newDate = DateTime(year + years, month + months, 1);
    // if (DateUtils.lastDayOfMonth(newDate).day < day) {
    //   newDate = DateTime(newDate.year, newDate.month + 1, 1);
    // } else {
    //   newDate = DateTime(newDate.year, newDate.month, day);
    // }
    // return VaxDate(newDate.year, newDate.month, newDate.day + days);
    return VaxDate(1, 1, 1);
  }
}

VaxDate latestOf(List<VaxDate> dates) {
  var latest;
  for (final date in dates) {
    latest == null
        ? date
        : latest > date
            ? latest
            : date;
  }
  return latest;
}

VaxDate earliestOf(List<VaxDate> dates) {
  var earliest;
  for (final date in dates) {
    if (earliest == null) {
      earliest = date;
    } else {
      earliest = earliest < date ? earliest : date;
    }
  }
  return earliest;
}
