import 'package:flutter/material.dart';

class market extends StatefulWidget {

  @override
  State<market> createState() => _marketState();
}

class _marketState extends State<market> {

  void appbarcolor(){
    Color appBarColor = Colors.blue;
    setState(() {
      appBarColor = Colors.red;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {
              appbarcolor();
            },
            child: const Text(
              'Manufacturer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )
            )
          ),
          backgroundColor: Colors.red,
        )
        );
    }
}
