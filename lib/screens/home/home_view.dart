import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/screens/home/home.dart';
import 'package:mobile_app/utitls/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
        onTap: (value) => setState(() => currentIndex = value),
        items: navItems.map((e) {
          return BottomNavigationBarItem(
            backgroundColor: AppColors.lightColor,
            icon: Icon(
              e['icon'],
            ),
            label: e['label'],
          );
        }).toList(),
      ),
    );
  }
}
