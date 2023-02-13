import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class MyHomePageNew extends StatefulWidget {
  const MyHomePageNew({super.key});

  @override
  State<MyHomePageNew> createState() => _MyHomePageNewState();
}

class _MyHomePageNewState extends State<MyHomePageNew> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: Color.fromARGB(255, 29, 62, 161),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 25,
                  left: 0,
                  child: Container(
                    height: 70,
                    width: 330,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 231, 231, 231),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 35,
                  left: 20,
                  child: Text(
                    'Good Morning..!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 126, 126, 126),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  top: 60,
                  left: 40,
                  child: Text(
                    'Nevindu Heshan',
                    style: (TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text('data')
        ],
      ),
    );
  }
}
