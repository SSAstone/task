import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/screens/rewards/reward_details.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/card/reward_card.dart';

class RewardLayout extends StatefulWidget {
  const RewardLayout({super.key});

  @override
  State<RewardLayout> createState() => _RewardLayoutState();
}

class _RewardLayoutState extends State<RewardLayout> {
  String view = "";

  void showDetails() {
    setState(() {
      view = "details";
    });
  }
  void hidDetails() {
    setState(() {
      view = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          if (view == "details") {
            return RewardDetails(backRoute:() => hidDetails(),);
          } else {
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Rewards Page',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                centerTitle: true,
                backgroundColor: AppColors.darkColor,
                leading: const Center(
                  child: Text(
                    'Track',
                    style: TextStyle(color: AppColors.lightColor),
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        view = "";
                      });
                    },
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
                          child:  RewardCard(changeRoute: () => showDetails()),
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
        },
      ),
    );
  }
}
