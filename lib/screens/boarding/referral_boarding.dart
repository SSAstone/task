import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mobile_app/screens/password_view.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class ReferralBoarding extends StatefulWidget {
  const ReferralBoarding({Key? key}) : super(key: key);

  @override
  State<ReferralBoarding> createState() => _ReferralBoardingState();
}

class _ReferralBoardingState extends State<ReferralBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Set this property to true
      body: SingleChildScrollView(
        // Wrap the Scaffold's body with SingleChildScrollView
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Your existing content...
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 80, bottom: 20),
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
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      const Text(
                        "Let’s Get You Started",
                        style: TextStyle(color: Colors.white, fontSize: 32),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Enter a Referral code and we will give you 10 FundCoins just to get the ball rolling.",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF1A1A1A),
                          labelText: 'Referral code',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryColor,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Column(
                    children: [
                      // Your existing content...
                      PrimaryBtn(
                        title: 'Continue',
                        onTopPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Password(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 20),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
