import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromARGB(255, 123, 96, 195),
            Color.fromARGB(255, 137, 118, 188),
            Color.fromARGB(255, 190, 114, 223),
            Color.fromARGB(255, 101, 61, 239)
          ])),
    ),
    leading: Icon(Icons.menu),
    title: Text('Shopping App'),
  );
}
