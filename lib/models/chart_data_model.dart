import 'package:hive/hive.dart';

part 'chart_data_model.g.dart';

@HiveType(typeId: 1)
class ChartDataModel extends HiveObject {
  @HiveField(0)
  final DateTime x;
  @HiveField(1)
  final double y;

  ChartDataModel(this.x, this.y);
}
