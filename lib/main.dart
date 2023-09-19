
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hinge1/pages/home.dart';
import 'package:hinge1/pages/market.dart';
import 'package:hinge1/pages/message.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
  final GoRouter _router = GoRouter(
      routes: [
        GoRoute(path: '/', builder: ((context,state) => const home())),
        GoRoute(path: '/message.dart', builder: ((context,state) => const message())),
        GoRoute(path: '/market.dart', builder: ((context,state) => const market())),

      ]);
}
