
import 'package:flutter/material.dart';

class CustomLink extends StatelessWidget {
  const CustomLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'https://www.google.com/fdsfsfsdsfsfsdfsdfsdffsdf',
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 13),
    );
  }
}
// 