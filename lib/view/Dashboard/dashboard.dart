import 'dart:core';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../component/bottom_navigarion.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({super.key});

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class Product {
  final Color color;
  final String title;
  final String _type;
  final String balance;
  final double milesnub;
  final String miles;

  Product(this.color, this.title, this._type, this.balance, this.milesnub,
      this.miles);
}

class _MyDashBoardState extends State<MyDashBoard> {
  List<Product> productList = [
    Product(const Color.fromARGB(255, 175, 210, 254), "Magiya Mills Card",
        'Miles', 'Current Miles Balance', 9.0, 'Miles'),
    Product(const Color.fromARGB(255, 181, 191, 208), 'Magiya Transit Card',
        'Transit', 'Current Account Balance', 0.00, 'LKR')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Container(
              height: 250,
              child: ScrollSnapList(
                itemBuilder: _cardListItem,
                itemCount: productList.length,
                itemSize: 400,
                onItemFocus: (index) {},
                dynamicItemSize: true,
                reverse: false,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: Card(
                  color: const Color.fromARGB(255, 254, 226, 226),
                  child: SizedBox(
                    height: 100,
                    width: 380,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: const [
                          Text('Total Booked Tickets'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //BottomNavigation(),
    );
  }

  Widget _cardListItem(BuildContext context, int index) {
    Product product = productList[index];
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: SizedBox(
        width: 400,
        height: 150,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Card(
            color: (product.color),
            elevation: 12,
            child: Column(
              children: [
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(product.title),
                      const SizedBox(width: 100),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'lib/images/Magiyablack.png',
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      const SizedBox(width: 270),
                      Text(product._type),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset('lib/images/sim.png'),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(product.balance),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(" ${product.miles}"),
                      Text(' ${product.milesnub}'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
