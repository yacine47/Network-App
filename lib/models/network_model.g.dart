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
      chartDataPings: (fields[4] as List).cast<ChartDataModel>(),
      chartDataWgets: (fields[5] as List).cast<ChartDataModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, NetworkModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.url)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.isPingConnect)
      ..writeByte(3)
      ..write(obj.isWgetConnect)
      ..writeByte(4)
      ..write(obj.chartDataPings)
      ..writeByte(5)
      ..write(obj.chartDataWgets);
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
