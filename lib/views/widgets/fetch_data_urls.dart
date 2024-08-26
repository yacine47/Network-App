import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/cubits/check_network/check_network_cubit.dart';
import 'package:network_app/functions/get_urls.dart';
import 'package:network_app/views/widgets/custom_button_delete.dart';
import 'package:network_app/views/widgets/custom_link.dart';
import 'package:network_app/views/widgets/custom_row_table.dart';
import 'package:network_app/views/widgets/custom_status_point.dart';

class FetchDataUrls extends StatelessWidget {
  const FetchDataUrls({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckNetworkCubit, CheckNetworkState>(
      builder: (context, state) {
        if (state is CheckNetworkSuccess) {
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.urls.length,
            separatorBuilder: (context, index) => const Divider(height: 0),
            itemBuilder: (context, index) => CustomRowTable(
              rowName: CustomLink(url: state.urls[index].url),
              rowPing:
                  CustomStatusPoint(isConnect: state.urls[index].isPingConnect),
              rowWget:
                  CustomStatusPoint(isConnect: state.urls[index].isWgetConnect),
              rowDelete: CustomButtonDelete(
                onPressed: () {
                  deleteUrl(index);
                  BlocProvider.of<CheckNetworkCubit>(context).checkUrls();
                },
              ),

              //
            ),
          );
        } else if (state is CheckNetworkFailure) {
          return Text(state.errMessage);
        }

        return const Padding(
          padding: EdgeInsets.only(top: 80),
          child: SizedBox(
              height: 26,
              width: 26,
              child: CircularProgressIndicator(color: kPrimaryColor)),
        );
      },
    );
  }

  void deleteUrl(int index) {
    final box = Hive.box(kUrlsBox);
    List<String> urls = getUrls();
    urls.removeAt(index);
    box.put(kUrls, urls);
  }
}
