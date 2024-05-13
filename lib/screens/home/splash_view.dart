import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mobile_app/utitls/routers.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Get.offNamed(Routers.welcomeBoarding),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/Vector.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
