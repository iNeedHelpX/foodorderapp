import 'package:customerappdemo/helpers/bodybox.dart';
import 'package:customerappdemo/helpers/colourconstants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Box(),
      backgroundColor: backgroundSlate,
    );
  }
}
