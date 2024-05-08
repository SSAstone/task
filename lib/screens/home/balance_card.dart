import 'package:flutter/material.dart';

Widget BalanceCard() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF1A1A1A),
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
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF1A1A1A),
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
                    Text("179,000 Points",
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    SizedBox(width: 10),
                  ],
                ),
                Row(
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
    ],
  );
}