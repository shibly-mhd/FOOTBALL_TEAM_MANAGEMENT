// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FootballPlayerAdapter extends TypeAdapter<FootballPlayer> {
  @override
  final int typeId = 0;

  @override
  FootballPlayer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FootballPlayer(
      name: fields[0] as String,
      age: fields[1] as String,
      position: fields[2] as String,
      goals: fields[3] as String,
      height: fields[4] as String,
      weight: fields[5] as String,
      jersey: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FootballPlayer obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.position)
      ..writeByte(3)
      ..write(obj.goals)
      ..writeByte(4)
      ..write(obj.height)
      ..writeByte(5)
      ..write(obj.weight)
      ..writeByte(6)
      ..write(obj.jersey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FootballPlayerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
