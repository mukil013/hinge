import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7D4F50),
      appBar: AppBar(
        backgroundColor: Color(0xff7D4F50),
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.chevron_left)
        ),
        title: Text('Profile'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        color: Color(0xffD1BE9C),
        child: ListView(
          children: [
            Text('Hello ')
          ],
        ),
      ),
    );
  }
}

