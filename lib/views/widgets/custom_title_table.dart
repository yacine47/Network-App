import 'package:flutter/material.dart';

class CustomTitleTable extends StatelessWidget {
  const CustomTitleTable({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ));
  }
}
