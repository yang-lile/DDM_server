// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BaseInfoAdapter extends TypeAdapter<BaseInfo> {
  @override
  final int typeId = 0;

  @override
  BaseInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BaseInfo(
      source: fields[0] as String,
      instruction: fields[2] as String,
      ruleName: fields[1] as String,
      stars: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BaseInfo obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.source)
      ..writeByte(1)
      ..write(obj.ruleName)
      ..writeByte(2)
      ..write(obj.instruction)
      ..writeByte(3)
      ..write(obj.stars);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
