import 'package:flutter/material.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/models/network_model.dart';
import 'package:network_app/views/widgets/custom_line_chart.dart';
import 'package:network_app/views/widgets/custom_drop_down_button.dart';
import 'package:network_app/views/widgets/custom_unit_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class NetworkDetailsViewBody extends StatefulWidget {
  const NetworkDetailsViewBody({super.key, required this.networkModel});

  final NetworkModel networkModel;

  @override
  State<NetworkDetailsViewBody> createState() => _NetworkDetailsViewBodyState();
}

class _NetworkDetailsViewBodyState extends State<NetworkDetailsViewBody> {
  DateTimeIntervalType _dateTimeIntervalType = DateTimeIntervalType.auto;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 26),
          CustomDropDownButton(
            onChanged: (value) {
              setState(() {
                _dateTimeIntervalType = value!;
              });
            },
          ),
          CustomLineChart(
            intervalType: _dateTimeIntervalType,
            chartDataPings: widget.networkModel.chartDataPings,
            chartDataWget: widget.networkModel.chartDataWgets,
          ),
          const SizedBox(height: 26),
          const CustomUnitCart(
            color: kPrimaryColor,
            title: 'Ping',
          ),
          const SizedBox(height: 8),
          CustomUnitCart(
            color: Colors.orangeAccent.withOpacity(.5),
            title: 'Wget',
          ),
        ],
      ),
    );
  }
}
