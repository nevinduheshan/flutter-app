import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/emailfield.dart';
import 'package:flutter_application_1/component/my_textField.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MyRegister extends StatelessWidget {
  final Function()? onTap;
  MyRegister({super.key, required this.onTap});

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Register',
                style: TextStyle(
                    color: Color.fromARGB(255, 36, 99, 235),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
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
                hintText: "First Name",
                obscureText: false,
                prefixIcon: const Icon(Icons.boy_rounded),
              ),
              const SizedBox(height: 20),
              //Last Name
              MyTextField(
                controller: lastnameController,
                hintText: 'Last Name',
                obscureText: false,
                prefixIcon: const Icon(Icons.boy_rounded),
              ),
              const SizedBox(height: 20),
              //UserName
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
                prefixIcon: const Icon(Icons.boy_rounded),
              ),
              const SizedBox(height: 20),
              //Email Address
              const EmailField(),
              const SizedBox(height: 20),
              //Mobile Number
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 36, 99, 235),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: 'PhoneNumber',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 104, 104, 104),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              //password
              MyTextField(
                controller: passwordcontroller,
                hintText: 'Password',
                obscureText: true,
                prefixIcon: const Icon(Icons.password),
              ),
              const SizedBox(height: 20),
              //confirm password
              MyTextField(
                controller: confirmpasswordcontroller,
                hintText: 'Confirm Password',
                obscureText: true,
                prefixIcon: const Icon(Icons.password),
              ),
              const SizedBox(height: 20),
              //Sing Up Button
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
                        fontSize: 16,
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
