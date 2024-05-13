import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/screens/home/splash_view.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/utitls/routers.dart';
// import 'package:mobile_app/utitls/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.darkColor,
      ),
      home: const SplashView(),
      initialRoute: Routers.splash,
      getPages: Routers.routers,
    );
  }
}
