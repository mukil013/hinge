import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hinge1/draweroptions/feedback.dart';
import 'package:hinge1/draweroptions/profile.dart';
import 'package:hinge1/draweroptions/setting.dart';
import 'package:hinge1/pages/Login%20page.dart';
import 'package:hinge1/pages/product.dart';
import 'package:hinge1/pages/search.dart';
import '../draweroptions/fav.dart';
import '../draweroptions/order.dart';
import '../draweroptions/review.dart';

class home extends StatelessWidget {
  home({super.key});
  
  final user = FirebaseAuth.instance.currentUser!;
  
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Color(0xff7D4F50),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hinge'),
              IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => search())), icon: Icon(Icons.search,color: Colors.white))
            ],
          ),
          bottom: TabBar(tabs: [
            Tab(text: 'Product'),
            Tab(text: 'Manufractureres',)
          ]),
        ),
        drawer: Drawer(
          backgroundColor: Color(0xff7D4F50),
            child: SafeArea(
              child: Container(
                child: ListView(
                  children:  [
                    DrawerHeader(child: Container(
                      height: 80,
                      color: Color(0xffD1BE9C),
                      child: Center(
                        child: Text( 'Signed In as '+ user.email!,
                        style: TextStyle(
                          color: Color(0xff7D4F50),
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                      ),
                    )),
                    const SizedBox(height: 25),
                    ListTile(
                      leading:const Icon(Icons.person),
                      title:const Text('Profile'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => profile()));
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
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => settings())),

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
                      () {FirebaseAuth.instance.signOut();}
                    ),
                  ],
                ),
              ),
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color(0xff7D4F50),
              items: const <BottomNavigationBarItem>[

                BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.white),label: 'home'),
                BottomNavigationBarItem(icon: Icon(Icons.message, color: Colors.white),label: 'message'),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.white),label: 'cart'),
              ],
            ),
        body: TabBarView(
          children: [
            product(),
            product()
          ]
        ),
      ),
    );
  }
}
