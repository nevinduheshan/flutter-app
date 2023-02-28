import 'package:flutter/material.dart';

class bottomRow extends StatelessWidget {
  const bottomRow({
    super.key,
    required this.mdetail,
    required this.point,
    required this.edetail,
  });

  final String mdetail;
  final String point;
  final String edetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                mdetail,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 5, 121, 216),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  point,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                  ),
                ),
              ),
              const Text(
                '08.30 PM',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
