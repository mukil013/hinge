import 'package:flutter/material.dart';

class input extends StatelessWidget {
  const input({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2,
            color: Colors.black12),
          ),
          hintText: 'Search',
          filled: true,
          fillColor: Colors.black12
        ),
      )
    );
  }
}
