import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.deepPurple,
      ),
      height: 70,
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        child:  Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
    );
  }
}
