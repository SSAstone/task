import 'package:flutter/material.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class SelectAccount extends StatefulWidget {
  final void Function()? changeRoute;
  final void Function()? backRoute;
  const SelectAccount({super.key, this.changeRoute, this.backRoute});

  @override
  State<SelectAccount> createState() => _SelectAccountState();
}

class _SelectAccountState extends State<SelectAccount> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Send to Fundify Account',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            widget.backRoute?.call();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.darkColor,
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextField(
              style: TextStyle(color: AppColors.lightColor),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF1A1A1A),
                labelText: 'Referral code',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.secondaryColor,
                    width: 1,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                color: AppColors.darkColor,
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                // Icon(Icons.account_balance,
                                //     color: Colors.white),
                                // SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shater Tsavsar",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Text(
                                      "@Shatermt",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/Vector.png",
                                  width: 17,
                                  height: 23,
                                ),
                                SizedBox(width: 10,),
                                const Text(
                                  "24,990 Points",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
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
            PrimaryBtn(
              title: 'Continue',
              onTopPressed: () {
                widget.changeRoute?.call();
              },
            ),
          ],
        ),
      ),
      
    );
  }
}
