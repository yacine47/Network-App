import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/cubits/check_network/check_network_cubit.dart';
import 'package:network_app/functions/get_urls.dart';
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
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  await addLinkToDataBase();

                  Navigator.pop(context);
                  BlocProvider.of<CheckNetworkCubit>(context).checkUrls();
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

  Future<void> addLinkToDataBase() async {
    final box = Hive.box(kUrlsBox);
    List<String> urls = getUrls();
    urls.add(title!);
    await box.put(kUrls, urls);
  }
}
