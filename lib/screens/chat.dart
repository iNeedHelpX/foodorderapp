import 'package:customerappdemo/helpers/bodybox.dart';
import 'package:customerappdemo/helpers/colourconstants.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  Chat({Key key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: backgroundSlate,
        body: Box(),
      ),
    );
  }
}
