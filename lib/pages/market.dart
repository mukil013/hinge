import 'package:flutter/material.dart';

class market extends StatefulWidget {

  @override
  State<market> createState() => _marketState();
}

class _marketState extends State<market> {

  void appbarcolor(){
    Color appBarcolor = Colors.blue;
    setState(() {
      appBarcolor = Colors.red;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: GestureDetector(
        onTap: () {
      // Call the function to change the app bar color
        appbarcolor();
        },
        child: const Text('Manufacturer',
        style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
          ),
    ),
    ), // Set the app bar color
    )
  }
}
