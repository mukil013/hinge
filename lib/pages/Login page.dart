import 'package:flutter/material.dart';
import 'package:hinge1/components/access_button.dart';
import 'package:hinge1/components/input.dart';
import 'package:hinge1/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {

  LoginPage({super.key});

  final emailController =TextEditingController();
  final passwordController = TextEditingController();

  void signUser() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff7D4F50),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                const SizedBox(height: 35),
                const Center(
                  child: Text('Hinge',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD1BE9C)
                    ),),
                ),
                const SizedBox(height: 125),
                input(
                  controller: emailController,
                  hintText: 'Username',
                  obsecureText: false,
                ),
                const SizedBox(height: 40),
                input(
                    controller: passwordController,
                    hintText: 'password',
                    obsecureText: true
                ),
                const SizedBox(height: 80),
                button(
                  onTap: signUser,
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
