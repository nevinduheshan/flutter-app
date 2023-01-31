import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors/global.colors.dart';
import 'package:get/get.dart';
import 'login.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Get.to(LoginPage());
    });
    return Scaffold(
      backgroundColor: Globalcolors.mainColor,
      body: const Center(
          child: Text(
        'Magiya',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
