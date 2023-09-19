import 'package:flutter/material.dart';
import 'package:hinge1/components/cards.dart';
import 'package:hinge1/components/input.dart';

class market extends StatelessWidget {
  const market({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: null, child: Text('Product',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),)),
            TextButton(onPressed: null, child: Text('Manufacturers',style: TextStyle(
                color: Colors.white,
                fontSize: 18
            ))),
          ],
        ),
      ),
      drawer: Drawer(
          child: SafeArea(
            child: ListView(
              children: const [
                SizedBox(height: 125),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Favorite'),
                ),
                ListTile(
                  leading: Icon(Icons.bookmark_border),
                  title: Text('Order'),
                ),
                ListTile(
                  leading: Icon(Icons.reviews),
                  title: Text('Review'),
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
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Sign Out'),
                ),
              ],
            ),
          )
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

