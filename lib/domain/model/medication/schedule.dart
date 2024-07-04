class Schedule {
  Schedule({
    required this.dayIterator,
    required this.alarmWindow,
    this.dayOffset,
    required this.doseMin,
    required this.doseMax,
  });

  final int dayIterator;
  final int alarmWindow;
  final int? dayOffset;
  final int doseMin;
  final int doseMax;
}
