import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/controllers/home_layout_controller.dart';
// import 'package:mobile_app/controllers/home_layout_controller.dart';
import 'package:mobile_app/screens/home/enter_account.dart';
import 'package:mobile_app/screens/home/balance.dart';
import 'package:mobile_app/screens/home/profile.dart';
import 'package:mobile_app/screens/home/money_confirmation.dart';
import 'package:mobile_app/screens/home/select_ccount.dart';
import 'package:mobile_app/screens/home/send_money.dart';
import 'package:mobile_app/screens/home/transfer_view.dart';
import 'package:mobile_app/utitls/colors.dart';

class HomeLayout extends StatelessWidget {
  // HomeLayout({super.key});

  final HomeLayoutController controller = Get.put(HomeLayoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          switch (controller.view.value) {
            case "transfer":
              return TransferView(
                changeRoute: controller.showAccount,
                backRoute: controller.hiddenTransferView,
              );
            case "account":
              return EnterAccount(
                changeRoute: controller.showSelectView,
                backRoute: controller.hiddenSelectView,
              );
            case "select":
              return SelectAccount(
                changeRoute: controller.showMoney,
                backRoute: controller.hiddenShowMoney,
              );
            case "money":
              return SendMoney(
                changeRoute: controller.showMoneyConfirm,
                backRoute: controller.hiddenMoneyConfirm,
              );
            case "send":
              return MoneyConfirmation(backRoute: controller.hiddenConfirm);
            default:
              return Scaffold(
                backgroundColor: AppColors.backgroundColor,
                body: Stack(
                  children: [
                    Column(
                      children: [
                        Profile(),
                        SizedBox(height: 70),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 180, left: 30, right: 30),
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
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                                Text(
                                                  "“Enjoy Yourself bro”",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.normal),
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
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            Text(
                                              "2,000",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8,
                                                  fontWeight:
                                                      FontWeight.normal),
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
                        ),
                        // ElevatedButton(onPressed: controller.showTransferView, child: Text("dddd"),)
                      ],
                    ),
                    Positioned(
                      top: 150,
                      left: 0,
                      right: 0,
                      child: Balance(changeRoute: controller.showTransferView),
                    ),
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}
