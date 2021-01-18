import 'package:customerappdemo/helpers/colourconstants.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  Orders({Key key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Text(
        "Orders",
        style: TextStyle(
            color: wildPink, fontSize: 48, fontWeight: FontWeight.bold),
      )),
    );
  }
}
