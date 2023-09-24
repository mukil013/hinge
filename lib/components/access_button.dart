import 'package:flutter/material.dart';

class button extends StatelessWidget {

  final Function()? onTap;


  const button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xffD1BE9C),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Color(0xff7D4F50),
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
