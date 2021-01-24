import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'colourconstants.dart';

class Box extends StatelessWidget {
  const Box({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // SizedBox(height: 60),
          SizedBox(height: 190),
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: <Widget>[
              _buildMainCard(),
            ],
          ),
          //SizedBox(height: 50)
        ],
      ),
    );
  }
}

Widget _buildMainCard() {
  return SafeArea(
    bottom: true,
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipShadow(
        boxShadow: [BoxShadow(offset: Offset.infinite)],
        clipper: RoundedDiagonalPathClipper(),
        child: Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(9),
          height: 470,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(42),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topRight,
                colors: [
                  definitelyPurple,
                  goldColor,
                ]),
          ),
        ),
      ),
    ),
  );
}
