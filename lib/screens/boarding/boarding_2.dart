import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mobile_app/screens/boarding/boarding_3.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class Boarding_2 extends StatefulWidget {
  const Boarding_2({super.key});

  @override
  State<Boarding_2> createState() => _Boarding_2State();
}

class _Boarding_2State extends State<Boarding_2> {
  List<Map> boarding = [
    {
      'label': 'Welcome to\n Fundify!',
      'title': 'Empower your finances and earn rewards with every smart move.',
      'image': 'assets/images/image_2.png',
    },
    {
      'label': 'Earn FundCoins Easily!',
      'title':
          'Refer friends, make transactions, and set savings goals to earn FundCoins.',
      'image': 'assets/images/Group.png',
    },
    {
      'label': 'Unlock Exciting Rewards!',
      'title':
          "Redeem FundCoins for travel vouchers, gift cards, and more. Let's start earning!",
      'image': 'assets/images/Group_2.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30,
                          height: 3,
                          child: Opacity(
                            opacity: 0.1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(26),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 30,
                          height: 3,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(26),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 30,
                          height: 3,
                          child: Opacity(
                            opacity: 0.1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(26),
                              ),
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
                margin: EdgeInsets.only(top: 10),
                // padding: EdgeInsets.only(top: 300),
                // decoration: const BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage("assets/images/Group.png"),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                // width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset("assets/images/Group.png"),
                    Text(
                      "Welcome to\n Fundify!",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Empower your finances and earn rewards with every smart move.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50),
                child: Column(
                  children: [
                    PrimaryBtn(
                      title: 'Continue',
                      onTopPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Boarding_3(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    PrimaryBtn(
                      title: 'Back',
                      onTopPressed: () => Get.back(),
                      style: const {
                        'color': AppColors.darkColor,
                        'textColor': AppColors.lightColor,
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
