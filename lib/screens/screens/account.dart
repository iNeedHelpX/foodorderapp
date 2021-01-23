import 'package:customerappdemo/helpers/colourconstants.dart';
import 'package:flutter/material.dart';

class AccPage extends StatefulWidget {
  AccPage({Key key}) : super(key: key);

  @override
  _AccPageState createState() => _AccPageState();
}

class _AccPageState extends State<AccPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Text(
        "account",
        style: TextStyle(
            color: limeGreen, fontSize: 48, fontWeight: FontWeight.bold),
      )),
    );
  }
}
