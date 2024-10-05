import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_icons.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: ListView(
          children: [
            const Text(
              "Your Logo",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Sign in up",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Lorem Ipsum is simply",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "If you already have an account register",
              style: TextStyle(fontSize: 21),
            ),
            Row(children: [
              const Text("You can ", style: TextStyle(fontSize: 21)),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Login here !",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      )))
            ]),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
                text: '  Enter Email', textInputType: TextInputType.text),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
                text: '  Create User name', textInputType: TextInputType.text),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              text: '  Contact number',
              textInputType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              text: '  Password',
              icon: true,
              isVisabilty: true,
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
                text: '  Confirm Password',
                icon: true,
                isVisabilty: true,
                textInputType: TextInputType.text),
            const SizedBox(
              height: 50,
            ),
            const CustomButton(text: "Register"),
            const SizedBox(
              height: 60,
            ),
            const Center(
                child: Text(
              "or continue with",
              style: TextStyle(fontSize: 23, color: Colors.grey),
            )),
            const SizedBox(
              height: 50,
            ),
            const CustomIcons(),
          ],
        ),
      ),
    );
  }
}
