import 'package:flutter/material.dart';

class CustomStatusPoint extends StatelessWidget {
  const CustomStatusPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        radius: 5,
        backgroundColor: Colors.green,
      ),
    );
  }
}
