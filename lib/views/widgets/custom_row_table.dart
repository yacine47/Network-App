import 'package:flutter/material.dart';

class CustomRowTable extends StatelessWidget {
  const CustomRowTable(
      {super.key,
      required this.rowName,
      required this.rowPing,
      required this.rowWget,
      required this.rowDelete,
      this.onTap});
  final VoidCallback? onTap;
  final Widget rowName;
  final Widget rowPing;
  final Widget rowWget;
  final Widget rowDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          // color: MyColors.lighBackgroundColor,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 4, child: rowName),
              Expanded(flex: 1, child: rowPing),
              Expanded(flex: 1, child: rowWget),
              Expanded(flex: 1, child: rowDelete),
            ],
          ),
        ),
      ),
    );
  }
}
