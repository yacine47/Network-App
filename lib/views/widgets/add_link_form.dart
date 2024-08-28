import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/cubits/check_network/check_network_cubit.dart';
import 'package:network_app/functions/get_urls.dart';
import 'package:network_app/models/network_model.dart';
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

  String? url, name;

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
            hint: 'Name Site',
            onSaved: (value) {
              name = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Link Site',
            onSaved: (value) {
              url = value;
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
                  BlocProvider.of<CheckNetworkCubit>(context).checkUrls();
                  Navigator.pop(context);
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
    final box = Hive.box<NetworkModel>(kNetworkBox);
    // List<String> urls = getUrls();

    await box.add(NetworkModel(
      url: url!,
      name: name!,
      isPingConnect: false,
      isWgetConnect: false,
      lastChecked: DateTime.now(),
      refreshInterval: 60,
    ));
  }
}
