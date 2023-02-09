import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton(
      {super.key, required this.onTap, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: HexColor('#2463EB'),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            'Sing In',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
