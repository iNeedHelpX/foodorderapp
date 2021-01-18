import 'package:customerappdemo/helpers/colourconstants.dart';
import 'package:customerappdemo/helpers/prodcard.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => new _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<Widget> bottomNavIconList = [
    Image.asset(
      "assets/store.png",
      width: 35.0,
      height: 35.0,
    ),
    Icon(
      Icons.search,
      size: 32.0,
    ),
    Icon(
      Icons.favorite,
      size: 32.0,
    ),
    Icon(
      Icons.shopping_bag,
      size: 32.0,
    ),
    Image.asset("assets/macaroons.png", width: 35.0, height: 35.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundSlate,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
          child: new Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 25.0),
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
