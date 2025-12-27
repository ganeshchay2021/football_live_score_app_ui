import 'package:flutter/material.dart';
import 'package:football_live_score_app/view/app_home/app_home_Screen.dart';
import 'package:football_live_score_app/view/home/widget/my_bottom_navbar.dart';
import 'package:iconsax/iconsax.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    AppHomeScreen(),
    Center(child: Text("Calender")),
    Center(child: Text("Standing")),
    Center(child: Text("Account")),
  ];
  final List<IconData> icons = [
    Iconsax.home,
    Iconsax.calculator,
    Iconsax.chart,
    Icons.person_outline,
  ];
  final List<String> titles = ["home", "calendar", "Standing", "Account"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentTab],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.015),
              spreadRadius: 5,
              blurRadius: 8,
            ),
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) {
            return MyBottomNavbar(
              title: titles[index],
              isActive: currentTab == index ? true : false,
              icon: icons[index],
              onPressed: () {
                setState(() {
                  currentTab = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }
}
