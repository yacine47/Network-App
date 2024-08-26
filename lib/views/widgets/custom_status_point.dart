import 'package:flutter/material.dart';

class CustomStatusPoint extends StatelessWidget {
  const CustomStatusPoint({super.key, required this.isConnect});

  final bool isConnect;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 5,
        backgroundColor: isConnect ? Colors.green : Colors.red,
      ),
    );
  }
}
