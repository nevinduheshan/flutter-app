import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({super.key});

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 254, 242, 242),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Dashboard',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.blue.shade200,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 290,
              color: Colors.grey.shade300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  //1 one -----------------------------------------------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18, right: 20, top: 20, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 380,
                        padding: const EdgeInsets.only(
                          left: 28,
                          bottom: 20,
                          right: 20,
                          top: 20,
                        ),
                        color: const Color.fromARGB(255, 24, 33, 52),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                ),
                                const Text(
                                  'Magiya Mills Card',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(221, 255, 255, 255),
                                  ),
                                ),
                                const SizedBox(width: 85),
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                      'lib/images/Magiya_white.png'),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                SizedBox(width: 265),
                                Text(
                                  'Miles',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                SizedBox(
                                  height: 45,
                                  width: 45,
                                  child: Image.asset('lib/images/sim.png'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 18),
                            Row(
                              children: const [
                                Text(
                                  'Current Miles Balance',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  '0.00 Miles',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //2 one ---------------------------------------------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18, right: 20, top: 20, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 380,
                        padding: const EdgeInsets.only(
                          left: 28,
                          bottom: 20,
                          right: 20,
                          top: 20,
                        ),
                        color: const Color.fromARGB(255, 30, 62, 161),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                ),
                                const Text(
                                  'Magiya Transit Card',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(221, 255, 255, 255),
                                  ),
                                ),
                                const SizedBox(width: 85),
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                      'lib/images/Magiya_white.png'),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                SizedBox(width: 280),
                                Text(
                                  'Transit',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                SizedBox(
                                  height: 45,
                                  width: 45,
                                  child: Image.asset('lib/images/sim.png'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 18),
                            Row(
                              children: const [
                                Text(
                                  'Current Account Balance',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'LKR 0.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //----------------------------------------------------------------------------------------------
                ],
              ),
            ),
            const Divider(),
            //------------------------------------------------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color.fromARGB(255, 22, 100, 52),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: Text(
                              'Total Booked Tickets',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            const Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 170),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 4),
                                color: Colors.grey.shade200.withOpacity(0.7),
                                child: const Text(
                                  'Cancelled 0',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 22, 100, 52),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //------------------------------------------------------------------------------------------------------
            const SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                  color: Color.fromARGB(255, 154, 52, 19),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: Text(
                              'Total Pending Tickets',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            const Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 125),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 4),
                                color: Colors.grey.shade200.withOpacity(0.7),
                                child: const Text(
                                  'Refund Requested 0',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 154, 52, 19),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //------------------------------------------------------------------------------------------------------
            const SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Color.fromARGB(255, 153, 27, 27),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: Text(
                              'Total Rejected Tickets',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            const Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 170),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 4),
                                color: Colors.grey.shade200.withOpacity(0.7),
                                child: const Text(
                                  'Refunded 0',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 153, 27, 27),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //history list table
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
