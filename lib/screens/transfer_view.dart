import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/controllers/bottom_navbar.dart';
import 'package:mobile_app/screens/enter_account.dart';
import 'package:mobile_app/screens/home/home.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';


class TransferView extends StatefulWidget {
  const TransferView({super.key});

  @override
  State<TransferView> createState() => _TransferViewState();
}

class _TransferViewState extends State<TransferView> {
  final BottomNavbar controller = Get.put(BottomNavbar());

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer Page',
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
      backgroundColor: AppColors.darkColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              PrimaryBtn(
                title: "Fundify Account",
                onTopPressed: () => Get.to(() => EnterAccount()),
                style: const {
                  "color": Color(0xFF1A1A1A),
                  "textColor": AppColors.lightColor
                },
                icon: const Icon(
                  Icons.back_hand,
                  color: AppColors.lightColor,
                  size: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              PrimaryBtn(
                title: "Local Bank",
                onTopPressed: () => Get.to(() => {}),
                style: const {
                  "color": Color(0xFF1A1A1A),
                  "textColor": AppColors.lightColor
                },
                icon: const Icon(
                  Icons.back_hand,
                  color: AppColors.lightColor,
                  size: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Transfers to Fundify Accounts earns you more FundCoins",
                style: TextStyle(color: AppColors.lightColor),
              )
            ],
          ),
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
