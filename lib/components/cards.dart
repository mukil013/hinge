import 'package:flutter/material.dart';

import 'card.dart';

class cards  extends StatelessWidget {
  const cards ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              card(),
              SizedBox(width: 12),
              card(),
              SizedBox(width: 12), card(),
              SizedBox(width: 12),
              card(),
              SizedBox(width: 12),
              card(),
              SizedBox(width: 12),
              card(),
              SizedBox(width: 12),
              card(),
              SizedBox(width: 12),
              card(),
              SizedBox(width: 12),
            ],
          ),
        ));
  }
}
