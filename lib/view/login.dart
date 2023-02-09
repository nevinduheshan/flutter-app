import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/my_textField.dart';
import 'package:flutter_application_1/component/my_button.dart';
import 'package:flutter_application_1/component/sqare.title.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sing user in method
  void singUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                //logo
                SizedBox(
                  height: 90,
                  child: Image.asset(
                    'lib/images/Magiya.png',
                  ),
                ),
                const SizedBox(height: 60),

                const Text(
                  'Sing in',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Please enter your account',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 15),
                //username
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                  prefixIcon: const Icon(
                    Icons.boy_rounded,
                    color: Color.fromARGB(255, 5, 5, 5),
                  ),
                ),

                const SizedBox(height: 20),

                //password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  prefixIcon: const Icon(
                    Icons.boy_rounded,
                    color: Color.fromARGB(255, 5, 5, 5),
                  ),
                ),
                const SizedBox(height: 10),

                //orgot Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 36, 99, 235),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                //singInbutton
                MyButton(
                  onTap: singUserIn,
                  onPressed: () {},
                ),
                const SizedBox(height: 40),

                //Or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                //images
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      //Driver Image
                      SquarTitle(imagePath: 'lib/images/Driver.png'),

                      SizedBox(width: 10),

                      //signup Image
                      SquarTitle(imagePath: 'lib/images/signup.png'),
                    ]),
                const SizedBox(height: 30),

                const Text("Don't have an account !"),

                const Text(
                  "Sing Up",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 36, 99, 235),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
