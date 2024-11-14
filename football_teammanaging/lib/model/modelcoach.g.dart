// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelcoach.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoachAdapter extends TypeAdapter<Coach> {
  @override
  final int typeId = 1;

  @override
  Coach read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coach(
      coachname: fields[0] as String?,
      age: fields[1] as String?,
      state: fields[2] as String?,
      listinfo: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Coach obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.coachname)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.state)
      ..writeByte(3)
      ..write(obj.listinfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoachAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
