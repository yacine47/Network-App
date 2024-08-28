import 'package:flutter/material.dart';
import 'package:network_app/models/network_model.dart';
import 'package:network_app/views/widgets/network_details_view_body.dart';

class NetworkDetailsView extends StatelessWidget {
  const NetworkDetailsView({super.key, required this.networkModel});

  final NetworkModel networkModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Details'),
      ),
      body: NetworkDetailsViewBody(
        networkModel: networkModel,
      ),
    );
  }
}
