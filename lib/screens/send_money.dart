import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/screens/home/home.dart';
import 'package:mobile_app/screens/money_confirmation.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  int currentIndex = 0;

  List<Map> navItems = [
    {
      'icon': Icons.home,
      'label': 'Home',
    },
    {
      'icon': Icons.menu_open,
      'label': 'Menu',
    },
    {
      'icon': Icons.person,
      'label': 'Profile',
    },
    {
      'icon': Icons.settings,
      'label': 'Setting',
    }
  ];

  List<Widget> screen = [
    const Home(),
    const Text('Menu'),
    const Text('Profile'),
    const Text('Setting')
  ];

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"), value: "USA"),
      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }

  String selectedValue = "USA";

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
          onPressed: () => Get.back(),
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
              style: const TextStyle(color: AppColors.lightColor),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
                      ))),
              value: selectedValue,
              items: dropdownItems,
              onChanged: (value) {
                setState(() => selectedValue = value!);
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
              onTopPressed: () => Get.to(() => const MoneyConfirmation()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.darkColor,
        selectedItemColor: AppColors.lightColor,
        unselectedItemColor: AppColors.lightColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() => currentIndex = value);
        },
        items: navItems.map(
          (e) {
            return BottomNavigationBarItem(
              backgroundColor: AppColors.lightColor,
              icon: Icon(
                e['icon'],
              ),
              label: e['label'],
            );
          },
        ).toList(),
      ),
    );
  }
}
