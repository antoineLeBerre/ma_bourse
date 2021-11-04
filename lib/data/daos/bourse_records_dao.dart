import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:ma_bourse/data/models/bourse_records_hive.dart';
import 'package:collection/collection.dart';

final bourseRecordsDaoProvider =
    Provider<BourseRecordsDao>((ref) => BourseRecordsDao());

class BourseRecordsDao {
  Future<List<BourseRecordsHive>> getAllRecords() async {
    var box = await Hive.openBox<BourseRecordsHive>('records');
    var allRecords = box.values.toList();

    return allRecords;
  }

  Future<double?> getLastDayRecords() async {
    var box = await Hive.openBox<BourseRecordsHive>('records');
    var lastDayRecords;
    var values = box.values;

    if (values.isNotEmpty) {
      lastDayRecords = values.last.lastDayRecord;
    }

    return lastDayRecords;
  }

  Future<BourseRecordsHive?> getRecordsByDay(DateTime day) async {
    var box = await Hive.openBox<BourseRecordsHive>('records');
    var bourseList = box.values.toList();
    var bourseRecord =
        bourseList.singleWhereOrNull((element) => day == element.day);

    return bourseRecord;
  }
}
