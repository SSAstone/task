import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/utitls/routers.dart';
import 'package:mobile_app/widget/card/reward_card.dart';

class RewardsView extends StatefulWidget {
  const RewardsView({super.key});

  @override
  State<RewardsView> createState() => _RewardsViewState();
}

class _RewardsViewState extends State<RewardsView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rewards Page',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.darkColor,
        leading: InkWell(
          onTap: () => Get.toNamed(Routers.homeView),
          child: const Center(
            child: Text(
              'Track',
              style: TextStyle(color: AppColors.lightColor),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const Text(
              '179,000',
              style: TextStyle(
                color: AppColors.lightColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 55),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: const RewardCard(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // RewardCard(),
          ],
        ),
      ),
    );
  }
}
