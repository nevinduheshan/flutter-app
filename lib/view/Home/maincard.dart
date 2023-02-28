import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'bottomRow.dart';
import 'cardRow.dart';

class Card2 extends StatelessWidget {
  const Card2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    buildCollapsed1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 27,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
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
                ],
              ),
            ),
          ]);
    }

    buildCollapsed2() {
      return Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 08,
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
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 3),
                  child: Text(
                    'LKR',
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
                  ),
                ),
                const Expanded(child: SizedBox(width: 70)),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20, top: 0),
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
      );
    }

    buildCollapsed3() {
      return Container();
    }

    buildExpanded1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 27,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
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
                ],
              ),
            ),
          ]);
    }

    buildExpanded2() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: buildCollapsed2()),
            ],
          ),
        ],
      );
    }

    buildExpanded3() {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade300,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 2),
              )
            ],
          ),
          child: Column(
            children: <Widget>[
              const Card_Row(
                icon: Icons.access_time,
                titlee: '4h',
                detaill: 'Duration',
              ),
              SizedBox(
                width: 300,
                height: 1,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                )),
              ),
              const Card_Row(
                  icon: Icons.compare_arrows_outlined,
                  titlee: '500 km',
                  detaill: 'Elevation'),
              SizedBox(
                width: 300,
                height: 1,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                )),
              ),
              const Card_Row(
                icon: Icons.speed,
                titlee: '100kmh',
                detaill: 'Max Speed',
              ),
              SizedBox(
                width: 300,
                height: 1,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                )),
              ),
              const Card_Row(
                  icon: Icons.explore_outlined,
                  titlee: 'East',
                  detaill: 'Direction'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 4),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 239, 255, 242),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '49 seats available Makumbura - Badulla',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Friday 17th February 2023',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const bottomRow(
                  mdetail: 'DEPARTS', point: 'Makumbura ', edetail: 'edetail'),
              SizedBox(
                width: 300,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              const bottomRow(
                  mdetail: 'ARRIVES', point: 'Badulla ', edetail: 'edetail'),
              SizedBox(
                width: 300,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              const bottomRow(
                  mdetail: 'DURATION', point: 'Approx', edetail: 'edetail'),
            ],
          ),
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1(),
                  expanded: buildExpanded1(),
                ),
                Expandable(
                  collapsed: buildCollapsed2(),
                  expanded: buildExpanded2(),
                ),
                Expandable(
                  collapsed: buildCollapsed3(),
                  expanded: buildExpanded3(),
                ),
                const Divider(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded ? "Minimize" : "MORE",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
