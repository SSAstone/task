import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/controllers/reward_layout_controller.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/card/reward_details_card.dart';

class RewardDetails extends StatelessWidget {
  final void Function()? changeRoute;
  final void Function()? backRoute;

  RewardDetails({super.key, this.changeRoute, this.backRoute});

  final RewardLayoutController reward_controller = Get.put(RewardLayoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkColor,
        centerTitle: true,
        toolbarHeight: 110,
        leading: IconButton(
            onPressed: () => reward_controller.showReward(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: const Text(
          'What are\n FundCoins?',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/Vector.png",
              width: 17,
              height: 23,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 22),
              child: const Text(
                "FundCoins are like your digital rewards. You can earn them by doing things that help you build a stronger financial future. Here's how:",
                style: TextStyle(
                    color: AppColors.lightColor,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                  onTap: () => changeRoute?.call(),
                  child: const RewardDetailsCard(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
