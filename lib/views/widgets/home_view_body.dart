import 'package:flutter/material.dart';

import 'package:network_app/views/widgets/custom_row_table.dart';
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
