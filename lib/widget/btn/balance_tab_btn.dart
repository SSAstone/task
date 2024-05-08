import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/screens/home/transfer_view.dart';
import 'package:mobile_app/utitls/colors.dart';

Widget BalanceTabBtn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: const Row(
          children: [
            Icon(
              Icons.account_balance_wallet_outlined,
            ),
            SizedBox(width: 10),
            Text(
              "Top up",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 1,
        height: 36,
        color: AppColors.darkColor,
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: InkWell(
          onTap: () => Get.to(() => TransferView()), 
          child: const Row(
            children: [
              Icon(
                Icons.call_split_outlined,
              ),
              SizedBox(width: 10),
              Text(
                "Transfer",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 1,
        height: 36,
        color: AppColors.darkColor,
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: const Row(
          children: [
            Icon(
              Icons.more_horiz_outlined,
            ),
            SizedBox(width: 10),
            Text(
              "More",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
