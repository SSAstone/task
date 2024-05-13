import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/utitls/routers.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class ReferralBoarding extends StatefulWidget {
  const ReferralBoarding({super.key});

  @override
  State<ReferralBoarding> createState() => _ReferralBoardingState();
}

class _ReferralBoardingState extends State<ReferralBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 110,
                          height: 3,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(26),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/Vector.png",
                    width: 17,
                    height: 23,
                  ),
                ],
              ),
              // Column(
              //   children: [
              const SizedBox(height: 20),
              const Text(
                "Let’s Get You Started",
                style: TextStyle(color: Colors.white, fontSize: 32),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Enter a Referral code and we will give you 10 FundCoins just to get the ball rolling.",
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                style: const TextStyle(color: AppColors.lightColor),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF1A1A1A),
                  labelText: 'Referral code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.secondaryColor,
                      width: 1,
                    ),
                  ),
                ),
              ),
              //   ],
              // ),
              const Expanded(child: SizedBox()),

              PrimaryBtn(
                title: 'Continue',
                onTopPressed: () => Get.toNamed(Routers.passwordPin),
              ),
              const SizedBox(height: 20),
              PrimaryBtn(
                title: 'Skip',
                onTopPressed: () => Get.back(),
                style: const {
                  'color': AppColors.darkColor,
                  'textColor': AppColors.lightColor,
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
