import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
   CustomTextField({super.key, required this.text , this.icon=false , this.isVisabilty=false,  required this.textInputType });
  final String text;
 final bool icon ;
 bool isVisabilty;
final  TextInputType textInputType ;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.textInputType,
      obscureText: widget.isVisabilty,
      decoration: InputDecoration(

          suffixIcon:widget.icon? IconButton(
              onPressed: () {
                widget.isVisabilty = !widget.isVisabilty;
                setState(() {});
              },
              icon: widget.isVisabilty
                  ? Icon(Icons.visibility_off,
                      color: Colors.deepPurple.withOpacity(.5))
                  : Icon(Icons.visibility,
                      color: Colors.deepPurple.withOpacity(.5))):const Text(''),
          fillColor: Colors.deepPurpleAccent.withOpacity(.2),
          filled: true,
          hintText: widget.text,
          hintStyle: TextStyle(color: Colors.deepPurple.withOpacity(.5)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(style: BorderStyle.none),
              borderRadius: BorderRadius.circular(12))),
    );
  }
}
