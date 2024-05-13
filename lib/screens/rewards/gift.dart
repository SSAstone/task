import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/screens/layout/home_layout.dart';
import 'package:mobile_app/utitls/colors.dart';

class Gift extends StatefulWidget {
  const Gift({super.key});

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
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
        backgroundColor: AppColors.darkColor,
        centerTitle: true,
        title: const Text(
          "Gift Cards",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "₣200 gift card to popular retailers.",
                style: TextStyle(color: AppColors.lightColor),
                textAlign: TextAlign.start,
              ),
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
                    )),
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
            const SizedBox(height: 10),
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
