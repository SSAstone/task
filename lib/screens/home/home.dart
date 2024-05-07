import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/utitls/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 85),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              'assets/images/user.png',
              height: 42,
              width: 42,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
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
          ])
        ]),
      ),
    );
  }
}
