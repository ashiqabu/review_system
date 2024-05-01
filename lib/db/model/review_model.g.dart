// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReviewModelAdapter extends TypeAdapter<ReviewModel> {
  @override
  final int typeId = 1;

  @override
  ReviewModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReviewModel(
      selectedSnack: fields[1] as String,
      selectedSnack1: fields[2] as String,
      selectedSnack2: fields[3] as String,
      description: fields[4] as String,
      selectedTick: fields[5] as String,
      selectedClose: fields[6] as String,
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ReviewModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.selectedSnack)
      ..writeByte(2)
      ..write(obj.selectedSnack1)
      ..writeByte(3)
      ..write(obj.selectedSnack2)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.selectedTick)
      ..writeByte(6)
      ..write(obj.selectedClose);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
