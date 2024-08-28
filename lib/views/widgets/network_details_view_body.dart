import 'package:flutter/material.dart';
import 'package:network_app/models/network_model.dart';
import 'package:network_app/views/widgets/custom_line_chart.dart';

class NetworkDetailsViewBody extends StatelessWidget {
  const NetworkDetailsViewBody({super.key, required this.networkModel});

  final NetworkModel networkModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,

      child: CustomLineChart(
        chartDataPings: networkModel.chartDataPings,
        chartDataWget: networkModel.chartDataWgets,
      ),

      //
    );
  }
}
