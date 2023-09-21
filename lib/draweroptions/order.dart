import 'package:flutter/material.dart';

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back)),
        title: Text('Favorite'),
      ),
    );
  }
}