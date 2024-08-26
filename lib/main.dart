import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/cubits/check_network/check_network_cubit.dart';

import 'package:network_app/repos/network_repo_impl.dart';
import 'package:network_app/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kUrlsBox);
  
  runApp(const NetworkApp());
}

class NetworkApp extends StatelessWidget {
  const NetworkApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CheckNetworkCubit(NetworkRepoImpl())..checkUrls(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Network App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: kBackgroundColor,
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: Colors.white),
          appBarTheme: const AppBarTheme(
              color: kPrimaryColor, foregroundColor: Colors.white),
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}
