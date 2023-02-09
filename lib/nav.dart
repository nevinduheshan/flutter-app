import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/view/Dashboard/dashboard.dart';
import 'package:flutter_application_1/view/Home/homepagenew.dart';
import 'package:flutter_application_1/view/profile/profile.dart';
import 'package:flutter_application_1/view/register.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  List pages = [
    const MyHomePageNew(),
    const MyDashBoard(),
    MyRegister(
      onTap: () {},
    ),
    const MyProfile(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
          child: GNav(
            backgroundColor: const Color.fromARGB(255, 33, 149, 243),
            color: const Color.fromARGB(255, 255, 255, 255),
            activeColor: const Color.fromARGB(255, 255, 255, 255),
            tabBackgroundColor: const Color.fromARGB(255, 29, 50, 232),
            gap: 8,
            onTabChange: onTap,
            //currentIndex: currentIndex,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.dashboard,
                text: 'DashBoard',
              ),
              GButton(
                icon: Icons.bus_alert,
                text: 'Alert',
              ),
              GButton(
                icon: Icons.man,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
