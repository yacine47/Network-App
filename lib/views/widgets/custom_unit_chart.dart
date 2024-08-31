import 'package:flutter/material.dart';

class CustomUnitCart extends StatelessWidget {
  const CustomUnitCart({
    super.key,
    required this.title,
    required this.color,
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 8,
          ),
          const SizedBox(width: 16),
          Text(title),
        ],
      ),
    );
  }
}
