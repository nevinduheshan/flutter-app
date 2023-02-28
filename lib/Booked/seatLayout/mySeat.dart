import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'SeatLayout.dart';
import 'dummydata.dart';

class MySeat extends StatelessWidget {
  const MySeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MySeatLayout(
            model: seatLayout,
          )
        ],
      ),
    );
  }
}
