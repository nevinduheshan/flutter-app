import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyCardOne extends StatelessWidget {
  const MyCardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 18, right: 20, top: 20, bottom: 20),
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
                    const Expanded(child: SizedBox(width: 95)),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset('lib/images/Magiya_white.png'),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: const [
                    Expanded(child: SizedBox(width: 275)),
                    Text(
                      'Miles',
                      style: TextStyle(fontSize: 15, color: Colors.white),
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
    );
  }
}
