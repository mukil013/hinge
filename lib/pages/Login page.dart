import 'package:flutter/material.dart';
import 'package:hinge1/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
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
                SizedBox(height: 35),
                Center(
                  child: Text('Hinge',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD1BE9C)
                    ),),
                ),
                SizedBox(height: 125),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white70,
                    border: UnderlineInputBorder(),
                    labelText: 'Username'
                  )
                ),
                SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white70,
                      border: UnderlineInputBorder(),
                      labelText: 'Password'
                  ),
                ),
                SizedBox(height: 80),
                Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => home())),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffD1BE9C)
                          ),
                          child: const Text('Login',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff7D4F50)
                          )
                          )
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
