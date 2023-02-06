import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_application_1/colors/global.colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                color: Color.fromARGB(255, 29, 62, 161),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 330,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 95,
                    left: 20,
                    child: Text(
                      'Good Morning..!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 120,
                    left: 40,
                    child: Text(
                      'Nevindu Heshan',
                      style: (TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Material(
                      child: Container(
                        height: 200.0,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 175, 210, 254),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 15,
                    left: 45,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Magiya Miles Card',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15, top: 15),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'lib/images/Magiyablack.png',
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 65,
                    right: 55,
                    child: Text(
                      'Miles',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 85,
                    left: 45,
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('lib/images/sim.png'),
                    ),
                  ),
                  const Positioned(
                    left: 45,
                    bottom: 90,
                    child: Text(
                      'Current Miles Balance',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 60,
                    left: 45,
                    child: Text(
                      '0.00' ' Miles',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
