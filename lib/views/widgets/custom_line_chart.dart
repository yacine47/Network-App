import 'package:flutter/material.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/models/chart_data_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({
    super.key,
    required this.chartDataPings,
    required this.chartDataWget,
    required this.intervalType,
  });

  final List<ChartDataModel> chartDataPings;
  final List<ChartDataModel> chartDataWget;
  final DateTimeIntervalType intervalType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      width: MediaQuery.of(context).size.width,
      child: SfCartesianChart(
        primaryXAxis: DateTimeAxis(
          intervalType:
              intervalType, // Change to seconds, minutes, or hours based on your data
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          zoomFactor: 0.2, // Show only 20% of the data at a time
          zoomPosition: 0.8, // Start near the end of the data
          // interactiveTooltip: InteractiveTooltip(arrowWidth: 20)
          minorTicksPerInterval: 5,
        ),
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: 2,
          interval: 1,
        ),
        zoomPanBehavior: ZoomPanBehavior(
          enablePanning: true,
          zoomMode: ZoomMode.x,
          enableMouseWheelZooming: true, // For desktop platforms
        ),
        series: <LineSeries<ChartDataModel, DateTime>>[
          LineSeries<ChartDataModel, DateTime>(
            dataSource: chartDataPings,
            xValueMapper: (ChartDataModel data, _) => data.x,
            yValueMapper: (ChartDataModel data, _) => data.y,
            color: kPrimaryColor,
          ),
          LineSeries<ChartDataModel, DateTime>(
            dataSource: chartDataWget,
            xValueMapper: (ChartDataModel data, _) => data.x,
            yValueMapper: (ChartDataModel data, _) => data.y,
            color: Colors.orangeAccent.withOpacity(.5),
          ),
        ],
      ),
    );
  }
}
