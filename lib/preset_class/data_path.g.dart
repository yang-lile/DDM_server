// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_path.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DataPathAdapter extends TypeAdapter<DataPath> {
  @override
  final int typeId = 1;

  @override
  DataPath read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataPath(
      ruler: (fields[1] as List)?.cast<String>(),
    )
      ..baseInfo = fields[0] as BaseInfo
      ..suffix = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, DataPath obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.baseInfo)
      ..writeByte(1)
      ..write(obj.ruler)
      ..writeByte(2)
      ..write(obj.suffix);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataPathAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
