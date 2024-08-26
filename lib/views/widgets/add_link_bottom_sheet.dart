import 'package:flutter/material.dart';
import 'package:network_app/views/widgets/add_link_form.dart';

class AddLinkBottomSheet extends StatelessWidget {
  const AddLinkBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 12,
          right: 12,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: const AbsorbPointer(
        absorbing: false,
        child: SingleChildScrollView(child: AddLinkForm()),
      ),
    );
  }
}
