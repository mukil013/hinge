

import 'package:flutter/material.dart';
import 'package:hinge1/components/cards.dart';
import 'package:hinge1/components/input.dart';
import 'package:go_router/go_router.dart';
import 'package:hinge1/draweroptions/feedback.dart';
import 'package:hinge1/draweroptions/profile.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextButton(onPressed: null, child: Text('Product',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),)),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => market()));
            }, child: const Text('Manufacturers',style: TextStyle(
                color: Colors.white,
                fontSize: 18
            ))),
          ],
        ),
      ),
      drawer: Drawer(
          child: SafeArea(
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
                ),
              ],
            ),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.black54),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.message, color: Colors.black54),label: 'message'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.black54),label: 'cart'),
        ],
      ),
      body: ListView(
        children: const [
            SizedBox(height: 10),
            input(),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Categories',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  Icon(Icons.chevron_right)
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
                      fontWeight: FontWeight.bold
                  ),),
                  Icon(Icons.chevron_right)
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
                Text('Explore',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
          SizedBox(height: 10),
          cards()
          ],
      ),
    );
  }
}
