import 'package:flutter/material.dart';
import 'package:hinge1/pages/Login%20page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hinge1/pages/authPage.dart';
import 'firebase_options.dart';

import 'draweroptions/profile.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }

}
