import 'package:flutter/material.dart';

class CustomLink extends StatelessWidget {
  const CustomLink({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Text(
      url,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 13),
    );
  }
}
// 