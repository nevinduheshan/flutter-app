import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class EmailField extends StatefulWidget {
  const EmailField({super.key});

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  TextEditingController textEditingController = TextEditingController();
  bool isEmailCorrect = false;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  dynamic snackBar = SnackBar(
    duration: const Duration(milliseconds: 1500),
    content: const Text("Your Registration Complete"),
    action: SnackBarAction(
      label: 'Got it',
      onPressed: () {},
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: textEditingController,
        onChanged: (val) {
          setState(() {
            isEmailCorrect = isEmail(val);
          });
        },
        style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        showCursor: true,
        cursorColor: const Color.fromARGB(255, 0, 0, 0),
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "somthing@email.com",
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          prefixIcon: const Icon(
            Icons.email_outlined,
            color: Color.fromARGB(255, 5, 5, 5),
          ),
          suffixIcon: isEmailCorrect == false
              ? const Icon(
                  Icons.close_sharp,
                  color: Colors.red,
                )
              : const Icon(
                  Icons.done,
                  color: Colors.green,
                ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(10)),
          floatingLabelStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 18,
              fontWeight: FontWeight.w300),
          fillColor: Colors.grey[200],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: isEmailCorrect == false
                    ? Colors.red
                    : const Color.fromARGB(255, 36, 99, 235),
                width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
