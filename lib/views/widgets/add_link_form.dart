import 'package:flutter/material.dart';
import 'package:network_app/views/widgets/custom_button.dart';
import 'custom_text_field.dart';

class AddLinkForm extends StatefulWidget {
  const AddLinkForm({
    super.key,
  });

  @override
  State<AddLinkForm> createState() => _AddLinkFormState();
}

class _AddLinkFormState extends State<AddLinkForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Link Site',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 28,
          ),
          CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              title: 'Add Link'),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
