import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/Home/homepagenew.dart';
import 'package:flutter_application_1/view/profile/profile.dart';
import 'view/login.dart';
import 'view/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePageNew(),
    );
  }
}
