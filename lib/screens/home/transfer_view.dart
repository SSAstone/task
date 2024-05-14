import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/controllers/home_layout_controller.dart';
// import 'package:get/get.dart';
// import 'package:mobile_app/screens/enter_account.dart';
import 'package:mobile_app/utitls/colors.dart';
// import 'package:mobile_app/utitls/routers.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class TransferView extends StatelessWidget {
  final VoidCallback? backRoute;
  final VoidCallback? changeRoute;
  TransferView({super.key, this.backRoute, this.changeRoute});

  final HomeLayoutController home_controller = Get.put(HomeLayoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer Page',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // backRoute?.call();
            home_controller.homeView();
            // Get.toNamed(Routers.homeView);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.darkColor,
      ),
      backgroundColor: AppColors.darkColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              PrimaryBtn(
                title: "Fundify Account",
                onTopPressed: () {
                  // changeRoute?.call();
                  home_controller.showAccount();
                  // Get.to(() => EnterAccount());
                },
                style: const {
                  "color": Color(0xFF1A1A1A),
                  "textColor": AppColors.lightColor
                },
                icon: const Icon(
                  Icons.back_hand,
                  color: AppColors.lightColor,
                  size: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              PrimaryBtn(
                title: "Local Bank",
                onTopPressed: () {},
                style: const {
                  "color": Color(0xFF1A1A1A),
                  "textColor": AppColors.lightColor
                },
                icon: const Icon(
                  Icons.back_hand,
                  color: AppColors.lightColor,
                  size: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Transfers to Fundify Accounts earns you more FundCoins",
                style: TextStyle(color: AppColors.lightColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
