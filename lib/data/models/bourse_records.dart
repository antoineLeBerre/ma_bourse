import 'package:hive/hive.dart';
import 'package:ma_bourse/domain/entities/bourse_records.dart';

part 'bourse_records.g.dart';

@HiveType(typeId: 0)
class BourseRecordsHive {
  @HiveField(0)
  final DateTime day;
  @HiveField(1)
  final double dayRecord;
  @HiveField(2)
  final double lastDayRecord;
  @HiveField(3)
  final double totalRecord;

  const BourseRecordsHive(
      {required this.day,
      required this.dayRecord,
      required this.totalRecord,
      required this.lastDayRecord});

  BourseRecords toEntity() {
    return BourseRecords(
        day: day, dayRecords: dayRecord, totalRecords: totalRecord);
  }
}
