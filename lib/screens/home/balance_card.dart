import 'package:flutter/material.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/balance_tab_btn.dart';

Widget BalanceCard() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Balance",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              "₣25,000.40",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              children: [
                Text("My Wallet",
                    style: TextStyle(color: Colors.white, fontSize: 24)),
                SizedBox(width: 10),
                Icon(Icons.arrow_right_alt_outlined,
                    color: Colors.white, size: 28),
              ],
            ),
          ],
        ),
      ),
      Image.asset("assets/images/Line.png"),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/Vector_3.png"),
                    const Text("179,000 Points",
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    const SizedBox(width: 10),
                  ],
                ),
                const Row(
                  children: [
                    Text("My Wallet",
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_right_alt_outlined,
                        color: Colors.white, size: 28),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 10),
      Container(
        // padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: AppColors.lightColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        constraints: const BoxConstraints(
          minHeight: 0,
          maxHeight: double.infinity,
        ),
        child: BalanceTabBtn(),
      ),
    ],
  );
}
