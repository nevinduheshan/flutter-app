import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16),
          child: GNav(
            backgroundColor: const Color.fromARGB(255, 33, 149, 243),
            color: const Color.fromARGB(255, 255, 255, 255),
            activeColor: const Color.fromARGB(255, 255, 255, 255),
            tabBackgroundColor: const Color.fromARGB(255, 29, 50, 232),
            gap: 8,
            onTabChange: (value) {},
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(icon: Icons.dashboard, text: 'DashBoard'),
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
