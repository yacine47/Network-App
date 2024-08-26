import 'package:flutter/material.dart';
import 'package:network_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLines = 1,
    required this.hint,
    this.onSaved,
    // this.controller,
    this.keyboardType = TextInputType.text,
  });
  // final TextEditingController? controller;
  final int maxLines;
  final String hint;
  final void Function(String?)? onSaved;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      maxLines: maxLines,
      keyboardType: keyboardType,

      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(bottom: 18, top: 18, left: 18, right: 18),
          hintText: hint,
          label: Text(
            hint,
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(color: kPrimaryColor.withOpacity(0.45)),
          focusedBorder: buildBorder(color: kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
