import 'package:flutter/material.dart';
class My_textfiled extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const My_textfiled({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0),
      child:TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[400]),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
