import 'package:flutter/material.dart';
import 'package:mobile_app/screens/layout/home_layout.dart';
import 'package:mobile_app/utitls/colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
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
    const HomeLayout(),
    const Text('Menu'),
    const Text('Profile'),
    const Text('Setting')
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
