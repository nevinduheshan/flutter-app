import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../component/My_Ending.dart';
import '../../component/My_Search.dart';
import '../../component/circle_Button.dart';

class MyHomePageNew extends StatefulWidget {
  const MyHomePageNew({super.key});

  @override
  State<MyHomePageNew> createState() => _MyHomePageNewState();
}

class _MyHomePageNewState extends State<MyHomePageNew> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: const [
            AppBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          height: 130,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Color.fromARGB(31, 15, 82, 249),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello, \nGood Morning',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  CircleButton(
                    icon: Icons.notification_add,
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: const [
                MySearchField(),
                MyEndingPoint(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        //card -----------------------------------------------------------------------------------------------------
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 239, 246, 255),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 27,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 239, 68, 68),
                  ),
                  child: const SizedBox(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Todays Bookinig Windows is now closed.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 10,
                        ),
                        child: Text(
                          'NCG Express - NCG Super Luxury 49 Seater',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                      ),
                      child: Text(
                        "Ambilipitiya" " - " "Galle",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 8,
                        ),
                        child: Text(
                          '(' '10.30' 'AM' ')',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 8,
                          left: 10,
                        ),
                        child: Text(
                          'AVAILABLE AMENITIES',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 26, 142, 236),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8, left: 10, right: 10),
                        child: SizedBox(
                          width: 175,
                          height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.grey),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 6,
                          left: 20,
                        ),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 20,
                              )),
                              TextSpan(
                                  text: '  ' 'Air Conditioned',
                                  style: TextStyle(fontSize: 15))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 15, top: 7),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 20,
                              )),
                              TextSpan(
                                  text: '  ' 'Large Windows',
                                  style: TextStyle(fontSize: 15))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 20),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 20,
                                ),
                              ),
                              TextSpan(
                                  text: '  ' 'Footerst Seats',
                                  style: TextStyle(fontSize: 15))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 15, top: 10, bottom: 5),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 20,
                              )),
                              TextSpan(
                                  text: '  ' 'Adjustable Seats',
                                  style: TextStyle(fontSize: 15))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 35, top: 10),
                      child: Text(
                        '1200',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 3),
                      child: Text(
                        'LKR',
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade700),
                      ),
                    ),
                    const Expanded(child: SizedBox(width: 70)),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 20, top: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          color: Colors.black,
                          child: const Text(
                            'Book My Seat',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        //------------------------------------------------------------------------------------------------------------------
      ],
    );
  }
}
