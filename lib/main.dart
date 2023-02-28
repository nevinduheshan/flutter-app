import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/Dashboard/dashboard.dart';
import 'package:flutter_application_1/view/Home/homepagenew.dart';
import 'package:flutter_application_1/view/profile/profile.dart';
import 'Booked/bookedTicket.dart';
import 'Booked/seatLayout/mySeat.dart';
import 'nav.dart';
import 'view/login.dart';
import 'view/register.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const MyHomePageNew(),
    );
  }
}
