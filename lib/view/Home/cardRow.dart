import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Card_Row extends StatelessWidget {
  const Card_Row({
    super.key,
    required this.icon,
    required this.titlee,
    required this.detaill,
  });

  final IconData icon;
  final String titlee;
  final String detaill;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(icon),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Text(
              titlee,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              detaill,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
