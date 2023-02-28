import 'package:flutter/material.dart';
import 'package:flutter_application_1/Booked/seatLayout/SeatLayout.dart';
import 'package:flutter_application_1/Booked/seatLayout/dummyData.dart';
import 'package:flutter_application_1/Booked/seatLayout/mySeat.dart';

import '../view/Home/maincard.dart';

class MyBooked extends StatelessWidget {
  const MyBooked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ambilipitiya - Galle'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Card2(),
              Text('data'),
              //const MySeat(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  //height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(color: Colors.grey.shade200, width: 3)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            color: Colors.grey.shade200,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text('Booking Informationdata'),
                                ],
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                          ' Please fill out the form below to request for a seat booking.'),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text('Select Journey Date'),
                      TextFormField(
                        initialValue: 'Input text',
                        //maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Date',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 31, 110, 255),
                          ),
                          helperText: 'Helper text',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF6200EE)),
                          ),
                        ),
                      ),
                      const Text('Select Pickup & Destination'),
                      TextFormField(
                        initialValue: 'Pickup ',
                        //maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Pickup Location',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 31, 110, 255),
                          ),
                          helperText: 'Helper text',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF6200EE)),
                          ),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'Destination',
                        //maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Destination',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 31, 110, 255),
                          ),
                          helperText: 'Helper text',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF6200EE)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                    child: Column(
                      children: const [
                        Text('Magiya MILES Earnable'),
                        Text('Not Eligible')
                      ],
                    ),
                  ),
                  const SizedBox(height: 100, width: 1),
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.grey.shade300,
                    child: Column(
                      children: const [
                        Text('Cost Per Seat'),
                        Text('LKR 3,500'),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                color: Colors.amber,
                child: const Text(
                    ' jcdnjncsdnc dcjndsncdocdsc dsjnvosdvidsndsfnef dsnfosdjfoiwejfndf wfjiowejfiewfnewfewf iifniewhfiwef'),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
