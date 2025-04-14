

enum EquivalentSeriesGroups {
  
  group1,
  
  group2,
  
  none;

  static EquivalentSeriesGroups? fromString(String? string) {
    switch (string) {
      case '1':
        return EquivalentSeriesGroups.group1;
      case '2':
        return EquivalentSeriesGroups.group2;
      case '':
        return EquivalentSeriesGroups.none;
      default:
        return null;
    }
  }

  static EquivalentSeriesGroups? fromJson(Object? json) =>
      json is String ? fromString(json) : null;

  @override
  String toString() {
    switch (this) {
      case EquivalentSeriesGroups.group1:
        return '1';
      case EquivalentSeriesGroups.group2:
        return '2';
      case EquivalentSeriesGroups.none:
        return '';
    }
  }

  String toJson() => toString();
}
