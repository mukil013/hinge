
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hinge1/pages/home.dart';
import 'package:hinge1/pages/market.dart';
import 'package:hinge1/pages/message.dart';

import 'draweroptions/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }

}
