import 'package:customerappdemo/helpers/colourconstants.dart';
import 'package:customerappdemo/helpers/prodcard.dart';
import 'package:flutter/material.dart';

import 'colourconstants.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => new _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<Widget> bottomNavIconList = [
    Icon(
      Icons.favorite,
      color: almostBlue,
      size: 32.0,
    ),
    Icon(
      Icons.shopping_bag,
      color: goldColor,
      size: 32.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSlate,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 2.0),
          child: new Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 25.0),
                ),
              ),
              ProductCard(0xFF8DE6EC, "assets/burgerfry.png", "Burger Joint",
                  "\$15.00", "\$12"),
              SizedBox(
                height: 32.0,
              ),
              ProductCard(
                  0xFFD17FF7, "assets/taco.png", "Taco Boy", "\$9.99", "\$7.99")
            ],
          ),
        ),
      ),
    );
  }
}
