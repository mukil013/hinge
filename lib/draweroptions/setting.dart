import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7D4F50),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff7D4F50),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.chevron_left),
        ),
        title: Text('Settings'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xffD1BE9C),
            borderRadius: BorderRadius.circular(15)
        ),
          child: ListView(
            padding: EdgeInsets.all(25),
            children: [
              SizedBox(height: 18),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Language',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                  Text('English')
                ],
              ),
              SizedBox(height: 40),
              Text('Notification',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(height: 40),

              Text('Change Password',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(height: 40),

              Text('Delete Account',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(height: 40),

              Text('Rate the App',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(height: 40),

              Text('Version',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(height: 40),

              Text('Legal Policies',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(height: 40),

              Text('Clear App Cache',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(height: 80),


              Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffDC3F3F),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: TextButton(onPressed: () => Navigator.pop(context), child: Text('Sign Out', style: TextStyle(
                        color: Color(0xffD1BE9C)
                    ),)),
                  )
                  )
            ],
          ),
        ),
    );
  }
}
