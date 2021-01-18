import 'package:customerappdemo/bars/gradientbar.dart';
import 'package:customerappdemo/helpers/colourconstants.dart';
import 'package:customerappdemo/screens/account.dart';
import 'package:customerappdemo/screens/discover.dart';
import 'package:customerappdemo/screens/home.dart';
import 'package:customerappdemo/screens/orders.dart';
import 'package:flutter/material.dart';

import 'bars/bottombar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: TabBarView(
        children: <Widget>[
          Home(),
          Chat(),
          Orders(),
          AccPage(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      backgroundColor: backgroundSlate,
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: Colors.black26,
            child: TabBar(
              labelColor: wildPink,
              unselectedLabelColor: definitelyPurple,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              //For Indicator Show and Customization
              indicatorColor: Colors.black54,
              tabs: tabs(),
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
