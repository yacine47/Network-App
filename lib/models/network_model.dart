// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive/hive.dart';

import 'package:network_app/models/chart_data_model.dart';

part 'network_model.g.dart';

@HiveType(typeId: 0)
class NetworkModel extends HiveObject {
  @HiveField(0)
  String url;

  @HiveField(1)
  String name;

  @HiveField(2)
  bool isPingConnect;

  @HiveField(3)
  bool isWgetConnect;

  @HiveField(4)
  List<ChartDataModel> chartDataPings;

  @HiveField(5)
  List<ChartDataModel> chartDataWgets;

  NetworkModel({
    required this.url,
    required this.name,
    required this.isPingConnect,
    required this.isWgetConnect,
    required this.chartDataPings,
    required this.chartDataWgets,
  });
}
