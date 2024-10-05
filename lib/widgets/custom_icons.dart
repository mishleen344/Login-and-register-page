import 'package:flutter/material.dart';
class CustomIcons extends StatelessWidget {
  const CustomIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 60,
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black),
          height: 50,
          width: 50,
          child: const Icon(
            Icons.apple,
            color: Colors.white,
            size: 32,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Image.asset(
          "images/google_logo.png",
          height: 70,
        ),
      ],
    );
  }
}
