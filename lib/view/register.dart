import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_application_1/component/my_textField.dart';

class MyRegister extends StatelessWidget {
  final Function()? onTap;
  MyRegister({super.key, required this.onTap});

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailaddressController = TextEditingController();

  void singUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Register',
                style: TextStyle(
                  color: Color.fromARGB(255, 36, 99, 235),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 1),
              const Text(
                'Create a new account',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 30),
              //First Name
              MyTextField(
                controller: firstnameController,
                hintText: 'First Name',
                obscureText: false,
              ),
              const SizedBox(height: 20),
              //Last Name
              MyTextField(
                controller: lastnameController,
                hintText: 'Last Name',
                obscureText: false,
              ),
              const SizedBox(height: 20),
              //Email Address

              //Mobile Number
              //Password
              //Comfirm Password
              //Button
              GestureDetector(
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
                      'Sing Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
