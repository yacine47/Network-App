// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NetworkModelAdapter extends TypeAdapter<NetworkModel> {
  @override
  final int typeId = 0;

  @override
  NetworkModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NetworkModel(
      url: fields[0] as String,
      name: fields[1] as String,
      isPingConnect: fields[2] as bool,
      isWgetConnect: fields[3] as bool,
      lastChecked: fields[4] as DateTime,
      refreshInterval: fields[5] as int,
    )..timeRefresh = fields[6] as Timer?;
  }

  @override
  void write(BinaryWriter writer, NetworkModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.url)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.isPingConnect)
      ..writeByte(3)
      ..write(obj.isWgetConnect)
      ..writeByte(4)
      ..write(obj.lastChecked)
      ..writeByte(5)
      ..write(obj.refreshInterval)
      ..writeByte(6)
      ..write(obj.timeRefresh);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
