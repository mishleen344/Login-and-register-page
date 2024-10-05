import 'package:flutter/material.dart';
import 'package:yes_course_task2/pages/register_page.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_icons.dart';
import '../widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            const SizedBox(height: 20,),
            const Text(
              "Sign in up",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Lorem Ipsum is simply",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "If you already have an account register",
              style: TextStyle(fontSize: 21),
            ),
            Row(children: [
              const Text("You can ", style: TextStyle(fontSize: 21)),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const RegisterPage(),));
                  },
                  child: const Text("Register here !",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      )))
            ]),
            const SizedBox(
              height: 30,
            ),
             CustomTextField(text: '  Enter Email or user nsme',textInputType: TextInputType.text,),
            const SizedBox(
              height: 30,
            ),
             CustomTextField(text: '  Password' , icon: true , isVisabilty: true,textInputType: TextInputType.text,),
            const SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment.centerRight,
                child: const Text(
                  "Forget Password ?",
                  style: TextStyle(color: Colors.grey),
                )),
            const SizedBox(
              height: 30,
            ),
            const CustomButton(text: "Login"),
            const SizedBox(
              height: 50,
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
