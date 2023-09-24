

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hinge1/components/cards.dart';
import 'package:hinge1/components/input.dart';
import 'package:go_router/go_router.dart';
import 'package:hinge1/draweroptions/feedback.dart';
import 'package:hinge1/draweroptions/profile.dart';
import 'package:hinge1/pages/Login%20page.dart';
import 'package:hinge1/pages/market.dart';
import '';
import '../draweroptions/fav.dart';
import '../draweroptions/order.dart';
import '../draweroptions/review.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xff7D4F50),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Hinge'),
            IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.white))
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff7D4F50),
          child: SafeArea(
            child: Container(
              child: ListView(
                children:  [
                  const SizedBox(height: 125),
                  ListTile(
                    leading:const Icon(Icons.person),
                    title:const Text('Profile'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileUI()));
                    },
                  ),
                  ListTile(
                    leading:const Icon(Icons.favorite),
                    title:const Text('Favorite'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => fav())),
                  ),
                  ListTile(
                    leading: Icon(Icons.bookmark_border),
                    title: Text('Order'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => order())),
                  ),
                  ListTile(
                    leading: Icon(Icons.reviews),
                    title: Text('Review'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => review())),
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('History'),
                  ),

                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help'),
                  ),
                  ListTile(
                    leading: Icon(Icons.feedback),
                    title: Text('Feedback'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => feedback())),
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Sign Out'),
                    onTap:
                    () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()))
                    ,
                  ),
                ],
              ),
            ),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xff7D4F50),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.black54),label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.message, color: Colors.black54),label: 'message'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.black54),label: 'cart'),
            ],
          ),
      body: Container(
        color: Color(0xffD1BE9C),
        child: ListView(
          children: const [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Features',style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff7D4F50)
                    ),),
                    Icon(Icons.chevron_right, color: Color(0xff7D4F50))
                  ],
                ),
              ),
              SizedBox(height: 10),
              cards(),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New Arrival',style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff7D4F50)
                    ),),
                    Icon(Icons.chevron_right, color: Color(0xff7D4F50))
                  ],
                ),
              ),
              SizedBox(height: 10),
              cards(),
              SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Rated',style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff7D4F50)
                  ),),
                  Icon(Icons.chevron_right ,color: Color(0xff7D4F50))
                ],
              ),
            ),
            SizedBox(height: 10),
            cards(),
            SizedBox(height: 10)
            ],
        ),
      ),
    );
  }
}
