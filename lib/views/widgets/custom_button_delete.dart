
import 'package:flutter/material.dart';

class CustomButtonDelete extends StatelessWidget {
  const CustomButtonDelete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red[800],
        ),
        onPressed: () {});
  }
}