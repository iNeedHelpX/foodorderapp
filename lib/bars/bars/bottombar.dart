import 'package:flutter/material.dart';

List<Widget> tabs() {
  return <Widget>[
    Tab(
      icon: Icon(
        Icons.home,
        size: 24.0,
      ),
      text: 'Home',
    ),
    Tab(
      icon: Icon(
        Icons.cake_sharp,
        size: 24.0,
      ),
      text: 'Discover',
    ),
    Tab(
      icon: Icon(
        Icons.shopping_cart,
        size: 24.0,
      ),
      text: 'Orders',
    ),
    Tab(
      icon: Icon(
        Icons.api,
        size: 24.0,
      ),
      text: 'Account',
    ),
  ];
}
