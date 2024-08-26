import 'package:flutter/material.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/views/widgets/add_link_bottom_sheet.dart';
import 'package:network_app/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            builder: (context) => const AddLinkBottomSheet(),
          );
        },
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: const HomeViewBody(),
    );
  }
}
