abstract class SupportingStrings {
  dynamic toJson();

  static SupportingStrings fromJson(Map<String, dynamic> json) {
    if (json.keys.contains('antigenSeriesOverview') ||
        json.keys.contains('faq') ||
        json.keys.contains('immunity') ||
        json.keys.contains('contraindications') ||
        json.keys.contains('series')) {
      return AntigenSupportingStrings.fromJson(json);
    } else if (json.keys.contains('type') || json.keys.contains('data')) {
      return ScheduleSupportingStrings.fromJson(json);
    } else if (json.keys.contains('isHealthy') ||
        json.keys.contains('testCaseLayout') ||
        json.keys.contains('cases')) {
      return TestCasesStrings.fromJson(json);
    } else {
      throw Exception('There was an error reading the json strings');
    }
  }
}

class AntigenSupportingStrings extends SupportingStrings {
  AntigenSupportingStrings({
    this.antigenSeriesOverview,
    this.changeHistory,
    this.faq,
    this.immunity,
    this.contraindications,
    this.series,
  });

  String? antigenSeriesOverview;
  String? changeHistory;
  String? faq;
  String? immunity;
  String? contraindications;
  List<String>? series;

  factory AntigenSupportingStrings.fromJson(Map<String, dynamic> json){
    return AntigenSupportingStrings(
      antigenSeriesOverview: json['antigenSeriesOverview'] as String?,
      changeHistory: json['changeHistory'] as String?,
      faq: json['faq'] as String?,
      immunity: json['immunity'] as String?,
      contraindications: json['contraindications'] as String?,
      series: (json['series'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'antigenSeriesOverview': antigenSeriesOverview,
      'changeHistory': changeHistory,
      'faq': faq,
      'immunity': immunity,
      'contraindications': contraindications,
      'series': series,
    };
  }
}

class ScheduleSupportingStrings extends SupportingStrings {
  ScheduleSupportingStrings({
    this.type,
    this.data,
    this.changeHistory,
    this.overview,
  });

  SupportingType? type;
  String? data;
  String? changeHistory;
  String? overview;

  factory ScheduleSupportingStrings.fromJson(Map<String, dynamic> json) {
    return ScheduleSupportingStrings(
      type: json['type'] == null
          ? null
          : SupportingType.values
              .firstWhere((e) => e.toString() == 'SupportingType.${json['type']}'),
      data: json['data'] as String?,
      changeHistory: json['changeHistory'] as String?,
      overview: json['overview'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type?.toString().split('.').last,
      'data': data,
      'changeHistory': changeHistory,
      'overview': overview,
    };
  }
}

class TestCasesStrings extends SupportingStrings {
  TestCasesStrings({
    this.isHealthy,
    this.overview,
    this.testCaseLayout,
    this.cases,
  });

  bool? isHealthy;
  String? overview;
  String? testCaseLayout;
  String? cases;

  factory TestCasesStrings.fromJson(Map<String, dynamic> json) {
    return TestCasesStrings(
      isHealthy: json['isHealthy'] as bool?,
      overview: json['overview'] as String?,
      testCaseLayout: json['testCaseLayout'] as String?,
      cases: json['cases'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isHealthy': isHealthy,
      'overview': overview,
      'testCaseLayout': testCaseLayout,
      'cases': cases,
    };
  }
}

enum SupportingType {
  codedObservations,
  cvxToAntigenMap,
  liveVirusConflicts,
  vaccineGroupToAntigenMap,
  vaccineGroups,
}
