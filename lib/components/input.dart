import 'package:flutter/material.dart';

class input extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obsecureText;

  const input({super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2,
            color: Colors.black12),
          ),
          filled: true,
          hintText: hintText,
          fillColor: Colors.white
        ),
      )
    );
  }
}
