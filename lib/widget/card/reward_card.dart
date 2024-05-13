import 'package:flutter/material.dart';

import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class RewardCard extends StatefulWidget {
    final void Function()? changeRoute;
  final void Function()? backRoute;

  const RewardCard({super.key, this.changeRoute, this.backRoute});

  @override
  State<RewardCard> createState() => _RewardCardState();
}

class _RewardCardState extends State<RewardCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFF1A1A1A),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Travel Vouchers',
                style: TextStyle(
                  color: AppColors.lightColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Vector.png",
                    width: 13,
                    height: 16,
                  ),
                  SizedBox(width: 5),
                  const Text(
                    '5000',
                    style: TextStyle(
                      color: AppColors.lightColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 16),
          const Text(
            "₣1000 travel voucher.",
            style: TextStyle(color: AppColors.lightColor, fontSize: 14),
          ),
          SizedBox(height: 22),
          PrimaryBtn(title: "Redeem", onTopPressed: () => widget.changeRoute!.call()),
        ],
      ),
    );
  }
}
