import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/controllers/home_layout_controller.dart';
import 'package:mobile_app/controllers/reward_layout_controller.dart';
import 'package:mobile_app/screens/layout/home_layout.dart';
import 'package:mobile_app/screens/layout/reward_layout.dart';
// import 'package:mobile_app/screens/rewards/rewards_view.dart';
import 'package:mobile_app/utitls/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeLayoutController home_controller = Get.put(HomeLayoutController());
  final RewardLayoutController reward_controller = Get.put(RewardLayoutController());

  int currentIndex = 0;

  List<Map> navItems = [
    {
      'icon': Icons.home,
      'label': 'Home',
    },
    {
      'icon': Icons.fast_rewind_outlined,
      'label': 'Rewards',
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
    HomeLayout(),
    RewardLayout(),
    const Text('Profile'),
    const Text('Setting')
  ];

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    home_controller.homeView();
    reward_controller.showReward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: screen[currentIndex],
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
