import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:flutter_application_1/view/Home/product.dart';

class MyHomePageNew extends StatefulWidget {
  const MyHomePageNew({super.key});

  @override
  State<MyHomePageNew> createState() => _MyHomePageNewState();
}

class _MyHomePageNewState extends State<MyHomePageNew> {
  List<Product> productList = [
    Product('Miles', 'Magiya Miles Card', 90, 15),
    Product('Miles', 'Magiya Miles Card', 90, 15),
    Product('Miles', 'Magiya Miles Card', 90, 15),
    Product('Miles', 'Magiya Miles Card', 90, 15),
    Product('Miles', 'Magiya Miles Card', 90, 15),
    Product('Miles', 'Magiya Miles Card', 90, 15),
    Product('Miles', 'Magiya Miles Card', 90, 15),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Text('data'),
            SizedBox(
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
          ],
        ),
      ),
    );
  }

  Widget _cardListItem(BuildContext context, int index) {
    Product product = productList[index];
    return SizedBox(
      width: 400,
      height: 150,
      child: Card(
        color: const Color.fromARGB(255, 175, 210, 254),
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 100),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'lib/images/Magiyablack.png',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    SizedBox(width: 270),
                    Text(
                      'product',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                  children: const [
                    Text(
                      'Current Miles Balance',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: const [
                    Text(
                      '0.00 Miles',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
