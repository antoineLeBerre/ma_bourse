// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bourse_records_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BourseRecordsHiveAdapter extends TypeAdapter<BourseRecordsHive> {
  @override
  final int typeId = 0;

  @override
  BourseRecordsHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BourseRecordsHive(
      day: fields[0] as DateTime,
      dayRecord: fields[1] as double,
      totalRecord: fields[3] as double,
      lastDayRecord: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, BourseRecordsHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.day)
      ..writeByte(1)
      ..write(obj.dayRecord)
      ..writeByte(2)
      ..write(obj.lastDayRecord)
      ..writeByte(3)
      ..write(obj.totalRecord);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BourseRecordsHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
