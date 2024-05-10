import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/screens/boarding/boarding_2.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class BoardingView extends StatefulWidget {
  const BoardingView({super.key});

  @override
  State<BoardingView> createState() => _BoardingViewState();
}

class _BoardingViewState extends State<BoardingView> {
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
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 80, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                        const SizedBox(width: 10),
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
                        const SizedBox(width: 10),
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
                height: size.height * 0.5,
                margin: const EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(top: size.height * 0.28),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/image_2.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                child: const Column(
                  children: [
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
                padding: EdgeInsets.only(bottom: size.height * 0.1),
                child: PrimaryBtn(
                  title: 'Continue',
                  onTopPressed: () => Get.to(() => const Boarding_2()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
