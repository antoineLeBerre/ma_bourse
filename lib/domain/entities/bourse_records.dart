class BourseRecords {
  final DateTime day;
  final double dayRecords;
  double dayDifferenceRecords = 0;
  double dayDifferencePercentRecords = 0;
  final double totalRecords;
  double totalDifferenceRecords = 0;
  double totalDifferencePercentRecords = 0;

  BourseRecords(
      {required this.day,
      required this.dayRecords,
      required this.totalRecords});

  void updateDifference(double lastDayRecord, {double? newInvest}) {
    dayDifferenceRecords = dayRecords - lastDayRecord;

    if (newInvest != null) {
      dayDifferenceRecords -= newInvest;
    }

    dayDifferencePercentRecords = dayDifferenceRecords / lastDayRecord;

    totalDifferenceRecords = dayRecords - totalRecords;
    totalDifferenceRecords = totalDifferenceRecords / totalRecords;
  }
}
