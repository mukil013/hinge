import 'package:flutter/material.dart';

class review extends StatelessWidget {
  const review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back)),
        title: Text('Review'),
      ),
    );
  }
}