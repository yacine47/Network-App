import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/models/chart_data_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart(
      {super.key, required this.chartDataPings, required this.chartDataWget});

  final List<ChartDataModel> chartDataPings;
  final List<ChartDataModel> chartDataWget;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: DateTimeAxis(
          //Specified date time interval type in hours
          intervalType: DateTimeIntervalType.hours),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 2,
        interval: 1,
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
          color: Colors.amberAccent.withOpacity(.8),
        ),
      ],
    );

    //  Expanded(
    //   child: LineChart(
    //     LineChartData(
    //       minX: 0,
    //       maxX: 12,
    //       minY: 0,
    //       maxY: 1,
    //       clipData: const FlClipData.all(),
    //       gridData: FlGridData(
    //         show: true,
    //         getDrawingVerticalLine: (value) => const FlLine(strokeWidth: 0),
    //         getDrawingHorizontalLine: (value) {
    //           if (value == 0 || value == 1) {
    //             return const FlLine(
    //               color: Colors.black12,
    //               strokeWidth: 1,
    //             );
    //           } else {
    //             return const FlLine(strokeWidth: 0);
    //           }
    //         },
    //       ),
    //       titlesData: FlTitlesData(
    //         leftTitles: AxisTitles(
    //           sideTitles: SideTitles(
    //             showTitles: true,
    //             reservedSize: 32,
    //             getTitlesWidget: (value, meta) {
    //               if (value == 0 || value == 1) {
    //                 return Text('${value.toInt()}');
    //               }
    //               return const SizedBox.shrink();
    //             },
    //           ),
    //         ),
    //         bottomTitles: AxisTitles(
    //           sideTitles: SideTitles(
    //             showTitles: true,
    //             reservedSize: 22,
    //             interval: 1,
    //             getTitlesWidget: (value, meta) {
    //               if (value == 12) {
    //                 return Row(
    //                   children: [
    //                     Text('${value.toInt()}'),
    //                     const SizedBox(width: 4),
    //                     const Text('min', style: TextStyle(fontSize: 12)),
    //                   ],
    //                 );
    //               }
    //               return Text('${value.toInt()}');
    //             },
    //           ),
    //         ),
    //         topTitles: const AxisTitles(
    //           sideTitles: SideTitles(showTitles: false),
    //         ),
    //         rightTitles: const AxisTitles(
    //           sideTitles: SideTitles(showTitles: false),
    //         ),
    //       ),
    //       borderData: FlBorderData(
    //         show: true,
    //         border: const Border(
    //           left: BorderSide(color: Colors.black),
    //           bottom: BorderSide(color: Colors.black),
    //         ),
    //       ),
    //       lineBarsData: [
    //         LineChartBarData(
    //           spots: [
    //             const FlSpot(0, 0),
    //             const FlSpot(1, 1),
    //             const FlSpot(2, 1),
    //             const FlSpot(3, 0),
    //             const FlSpot(5, 1),
    //             const FlSpot(8, 0),
    //           ],
    //           isCurved: true,
    //           barWidth: 3,
    //           color: Colors.blue,
    //           belowBarData: BarAreaData(show: false),
    //           dotData: const FlDotData(show: true),
    //         ),
    //         LineChartBarData(
    //           spots: [
    //             const FlSpot(0, 0),
    //             const FlSpot(1, 1),
    //             const FlSpot(2, 0),
    //             const FlSpot(3, 1),
    //             const FlSpot(5, 0),
    //           ],
    //           isCurved: true,
    //           barWidth: 3,
    //           color: Colors.redAccent,
    //           belowBarData: BarAreaData(show: false),
    //           dotData: const FlDotData(show: true),
    //         ),
    //       ],
    //     ),
    //     duration: const Duration(milliseconds: 150),
    //     curve: Curves.linear,
    //   ),
    // );
    // LineChart(
    //   LineChartData(
    //     gridData: FlGridData(
    //       show: true,
    //       drawVerticalLine: true,
    //       verticalInterval: 1,
    //       horizontalInterval: 5,
    //       getDrawingHorizontalLine: (value) {
    //         return const FlLine(
    //           color: Colors.grey,
    //           strokeWidth: 1,
    //         );
    //       },
    //       getDrawingVerticalLine: (value) {
    //         return const FlLine(
    //           color: Colors.grey,
    //           strokeWidth: 1,
    //         );
    //       },
    //     ),
    //     titlesData: FlTitlesData(
    //       leftTitles: AxisTitles(
    //         sideTitles: SideTitles(
    //           showTitles: true,
    //           reservedSize: 30,
    //           getTitlesWidget: (value, meta) {
    //             return Text('${value.toInt()} min',
    //                 style: const TextStyle(fontSize: 12));
    //           },
    //           interval: 5,
    //         ),
    //       ),
    //       bottomTitles: AxisTitles(
    //         sideTitles: SideTitles(
    //           showTitles: true,
    //           reservedSize: 22,
    //           interval: 1,
    //           getTitlesWidget: (value, meta) {
    //             return Text('${value.toInt()}');
    //           },
    //         ),
    //       ),
    //       topTitles: const AxisTitles(
    //         sideTitles: SideTitles(showTitles: false),
    //       ),
    //       rightTitles: const AxisTitles(
    //         sideTitles: SideTitles(showTitles: false),
    //       ),
    //     ),
    //     borderData: FlBorderData(
    //       show: true,
    //       border: const Border(
    //         left: BorderSide(color: Colors.black),
    //         bottom: BorderSide(color: Colors.black),
    //       ),
    //     ),
    //     minX: 0,
    //     maxX: 10,
    //     minY: 0,
    //     maxY: 60,
    //     lineBarsData: [
    //       LineChartBarData(
    //         spots: [
    //           const FlSpot(0, 0),
    //           const FlSpot(1, 10),
    //           const FlSpot(2, 20),
    //           const FlSpot(3, 30),
    //           const FlSpot(4, 40),
    //           const FlSpot(5, 50),
    //           const FlSpot(6, 60),
    //         ],
    //         isCurved: true,
    //         barWidth: 3,
    //         belowBarData: BarAreaData(show: false),
    //         dotData: const FlDotData(show: false),
    //       ),
    //     ],
    //   ),
    // );
  }
}
