import 'package:flutter/material.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class EnterAccount extends StatefulWidget {
  final Function()? changeRoute;
  final Function()? backRoute;

  const EnterAccount({super.key, this.changeRoute, this.backRoute});

  @override
  State<EnterAccount> createState() => _EnterAccountState();
}

class _EnterAccountState extends State<EnterAccount> {
   
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
            Expanded(child: SizedBox()),
            PrimaryBtn(
              title: 'Continue',
              onTopPressed: () => {
                widget.changeRoute?.call()
              },
            ),
          ],
        ),
      ),
      
    );
  }
}
