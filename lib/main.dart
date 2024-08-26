import 'package:flutter/material.dart';
import 'package:network_app/constants.dart';
import 'package:network_app/views/home_view.dart';

void main() {
  runApp(const NetworkApp());
}

class NetworkApp extends StatelessWidget {
  const NetworkApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
    );
  }
}
