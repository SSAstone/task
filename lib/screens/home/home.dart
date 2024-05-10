import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/home/balance_card.dart';
import 'package:mobile_app/screens/home/profile.dart';
import 'package:mobile_app/utitls/colors.dart';
// import 'package:mobile_app/widget/btn/balance_tab_btn.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Profile(),
              SizedBox(height: 60),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 180, left: 30, right: 30),
                  width: double.infinity,
                  color: AppColors.darkColor,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.account_balance,
                                      color: Colors.white),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Total Balance",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        "“Enjoy Yourself bro”",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "2,000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Text(
                                    "2,000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.lightColor.withOpacity(0.1),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: BalanceCard(),
          ),
        ],
      ),
    );
  }
}
