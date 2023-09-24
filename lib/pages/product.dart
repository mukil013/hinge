import 'package:flutter/material.dart';

import '../components/cards.dart';

class product extends StatelessWidget {
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
