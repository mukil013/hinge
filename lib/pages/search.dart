import 'package:flutter/material.dart';
import 'package:hinge1/pages/home.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7D4F50),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff7D4F50),
        leading: IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => home())),
            icon: Icon(Icons.chevron_left)),
      ),
      body: SafeArea(
        child: Container(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
              )
          ),
      )
      )
    );
  }
}
