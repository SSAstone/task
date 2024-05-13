import 'package:flutter/material.dart';
import 'package:mobile_app/utitls/colors.dart';

class RewardDetailsCard extends StatelessWidget {
  const RewardDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Travel Vouchers",
                      style: TextStyle(
                        color: AppColors.lightColor,
                        fontSize: 22,
                      )),
                  Text("20",
                      style: TextStyle(
                          color: AppColors.lightColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(height: 14),
              Text(
                "Get your buddies on board. When they join Fundify using your invite, you earn FundCoins for every transaction they make.",
                style: TextStyle(color: AppColors.lightColor),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Image.asset("assets/images/Line.png"),
      ],
    );
  }
}
