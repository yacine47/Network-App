import 'dart:async';

import 'package:hive/hive.dart';

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
  DateTime lastChecked;

  @HiveField(5)
  int refreshInterval; // Interval in seconds

  @HiveField(6)
  Timer? timeRefresh;

  NetworkModel({
    required this.url,
    required this.name,
    required this.isPingConnect,
    required this.isWgetConnect,
    required this.lastChecked,
    required this.refreshInterval,
  });
}
