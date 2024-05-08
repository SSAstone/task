import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/screens/home/balance_card.dart';
import 'package:mobile_app/screens/home/profile.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/balance_tab_btn.dart';

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
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 55),
            child: Column(
              children: [
                Profile(),
                const SizedBox(
                  height: 110,
                ),
                Container(
                  color: AppColors.darkColor,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.only(top: 150),
                    child: Column(
                      children: [
                        Container(
                          // padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
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
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Transactions",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        // ListView.builder(
                        //   itemCount: 1,
                        //   shrinkWrap: true,
                        //   itemBuilder: (context, index) => Column(
                        //     children: [
                        //       Container(
                        //         margin: EdgeInsets.symmetric(vertical: 20),
                        //         child: const Row(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Row(
                        //               children: [
                        //                 Icon(Icons.account_balance,
                        //                     color: Colors.white),
                        //                 SizedBox(width: 10),
                        //                 Column(
                        //                   crossAxisAlignment:
                        //                       CrossAxisAlignment.start,
                        //                   children: [
                        //                     Text(
                        //                       "Total Balance",
                        //                       style: TextStyle(
                        //                           color: Colors.white,
                        //                           fontSize: 14,
                        //                           fontWeight:
                        //                               FontWeight.normal),
                        //                     ),
                        //                     Text(
                        //                       "“Enjoy Yourself bro”",
                        //                       style: TextStyle(
                        //                           color: Colors.white,
                        //                           fontSize: 8,
                        //                           fontWeight:
                        //                               FontWeight.normal),
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ],
                        //             ),
                        //             Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.end,
                        //               children: [
                        //                 Text(
                        //                   "2,000",
                        //                   style: TextStyle(
                        //                       color: Colors.white,
                        //                       fontSize: 14,
                        //                       fontWeight: FontWeight.normal),
                        //                 ),
                        //                 Text(
                        //                   "2,000",
                        //                   style: TextStyle(
                        //                       color: Colors.white,
                        //                       fontSize: 8,
                        //                       fontWeight: FontWeight.normal),
                        //                 )
                        //               ],
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //       Container(
                        //         height: 1,
                        //         width: double.infinity,
                        //         decoration: BoxDecoration(
                        //           color: AppColors.lightColor.withOpacity(0.1),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2795,
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              Text(
                                                "“Enjoy Yourself bro”",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "2,000",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Text(
                                            "2,000",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontWeight: FontWeight.normal,
                                            ),
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
                                    color:
                                        AppColors.lightColor.withOpacity(0.1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(top: 160, left: 0, right: 0, child: BalanceCard())
        ],
      ),
    );
  }
}
