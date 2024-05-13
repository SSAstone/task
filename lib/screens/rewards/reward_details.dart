import 'package:flutter/material.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/card/reward_details_card.dart';

class RewardDetails extends StatefulWidget {
    final void Function()? changeRoute;
    final void Function()? backRoute;

  const RewardDetails({super.key, this.changeRoute, this.backRoute});

  @override
  State<RewardDetails> createState() => _RewardDetailsState();
}

class _RewardDetailsState extends State<RewardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkColor,
        centerTitle: true,
        toolbarHeight: 110,
        leading: IconButton(
            onPressed: () => widget.backRoute?.call(),
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
                  onTap: () => widget.changeRoute?.call(),
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
