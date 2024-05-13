import 'package:flutter/material.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class SendMoney extends StatefulWidget {
  final void Function()? changeRoute;
  final void Function()? backRoute;
  const SendMoney({super.key, this.changeRoute, this.backRoute});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {

  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Send Money',
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
        margin: const EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFE8E4DA),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Text(
                'Shater Ts Dhaka',
                style: TextStyle(
                    color: AppColors.darkColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wallet Balance:",
                  style: TextStyle(
                      color: AppColors.lightColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "₣25,000.40",
                  style: TextStyle(
                      color: AppColors.lightColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
              dropdownColor: AppColors.darkColor,
              style: const TextStyle(color: AppColors.lightColor),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF1A1A1A),
                labelText: 'Select Country',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.secondaryColor,
                    
                  )
                ),
              ),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map(
                (String items) {
                  return DropdownMenuItem(
                    
                    value: items,
                    child: Text(items),
                  );
                },
              ).toList(),
              onChanged: (String? newValue) {
                setState(
                  () {
                    dropdownvalue = newValue!;
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "+ ₣200 Transfer Fee",
              style: TextStyle(color: AppColors.lightColor),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              style: const TextStyle(color: AppColors.lightColor),
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
            const Expanded(child: SizedBox()),
            PrimaryBtn(
              title: 'Continue',
              onTopPressed: () => {
                widget.changeRoute?.call(),
              },
            ),
          ],
        ),
      ),
      
    );
  }
}
