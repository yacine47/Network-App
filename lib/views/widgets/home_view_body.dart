import 'package:flutter/material.dart';
import 'package:network_app/views/widgets/custom_button_delete.dart';
import 'package:network_app/views/widgets/custom_link.dart';
import 'package:network_app/views/widgets/custom_row_table.dart';
import 'package:network_app/views/widgets/custom_status_point.dart';
import 'package:network_app/views/widgets/custom_title_table.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
        CustomRowTable(
          rowName: CustomLink(),
          rowPing: CustomStatusPoint(),
          rowWget: CustomStatusPoint(),
          rowDelete: CustomButtonDelete(),
        ),
        Divider(height: 0),
        CustomRowTable(
          rowName: CustomLink(),
          rowPing: CustomStatusPoint(),
          rowWget: CustomStatusPoint(),
          rowDelete: CustomButtonDelete(),
        ),
      ],
    ));
  }
}
