import 'package:flutter/material.dart';
import 'package:mobile_app/utitls/colors.dart';

Widget Profile() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/user.png',
          height: 42,
          width: 42,
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xFFE8E4DA),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Text(
            'Shater Ts Dhaka',
            style: TextStyle(color: AppColors.darkColor),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: const Stack(
            children: [
              Icon(
                Icons.notifications,
                color: AppColors.darkColor,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 5,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
