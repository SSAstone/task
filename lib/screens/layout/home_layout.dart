import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/enter_account.dart';
import 'package:mobile_app/screens/home/balance.dart';
import 'package:mobile_app/screens/home/profile.dart';
import 'package:mobile_app/screens/money_confirmation.dart';
import 'package:mobile_app/screens/select_ccount.dart';
import 'package:mobile_app/screens/send_money.dart';
import 'package:mobile_app/screens/transfer_view.dart';
import 'package:mobile_app/utitls/colors.dart';
// import 'package:mobile_app/widget/btn/balance_tab_btn.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  String view = "";
  bool showTransfer = false;
  bool account = false;

  void showTransferView() {
    setState(() {
      view = "transfer";
    });
  }
  void showAccount() {
    setState(() {
      view = "account";
    });
  }
  void showSelectView() {
    setState(() {
      view = "select";
    });
  }
 
  void showMoney() {
    setState(() {
      view = "money";
    });
  }
  void showMoneyConfirm() {
    setState(() {
      view = "send";
    });
  }
  void hiddenMoneyConfirm() {
    setState(() {
      view = "select";
    });
  }

  void hiddenTransferView() {
    setState(() {
      view = "";
    });
  }
  void hiddenAccount() {
    setState(() {
      view = "";
    });
  }
  void hiddenSelectView() {
    setState(() {
      view = "transfer";
    });
  }
  
  void hiddenShowMoney() {
    setState(() {
      view = "account";
    });
  }
  void hiddenConfirm() {
    setState(() {
      view = "money";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          if (view == "transfer") {
            return TransferView(changeRoute: () => showAccount(), backRoute: () => hiddenTransferView());
          } else if(view == "account") {
            return EnterAccount(changeRoute: showSelectView, backRoute: hiddenSelectView);
          } else if (view == "select") {
            return SelectAccount(changeRoute: showMoney, backRoute: hiddenShowMoney);
          } else if (view == "money") {
            return SendMoney(changeRoute: showMoneyConfirm, backRoute: hiddenMoneyConfirm);
          } else if (view == "send") {
            return MoneyConfirmation(backRoute: hiddenConfirm);
          } else {
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
                                    color:
                                        AppColors.lightColor.withOpacity(0.1),
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
                    child: Balance(changeRoute: () => showTransferView()),
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
