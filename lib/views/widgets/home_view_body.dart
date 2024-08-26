import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/cubits/check_network/check_network_cubit.dart';
import 'package:network_app/views/widgets/custom_button_delete.dart';
import 'package:network_app/views/widgets/custom_link.dart';
import 'package:network_app/views/widgets/custom_row_table.dart';
import 'package:network_app/views/widgets/custom_status_point.dart';
import 'package:network_app/views/widgets/custom_title_table.dart';
import 'package:network_app/views/widgets/fetch_data_urls.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        CustomRowTable(
          rowName: CustomTitleTable(title: 'Name'),
          rowPing: CustomTitleTable(title: 'Ping'),
          rowWget: CustomTitleTable(title: 'Wget'),
          rowDelete: CustomTitleTable(title: 'Delete'),
        ),
        Divider(height: 0),
        FetchDataUrls(),
      ],
    ));
  }
}
