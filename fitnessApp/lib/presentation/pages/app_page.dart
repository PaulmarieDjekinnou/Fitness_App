import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import './challenge-screen/challenge_page.dart';
import '../../theme/colors.dart';
import 'account_page.dart';
import 'activities_page.dart';
import 'plans_page.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    ActivitiesPage(),
    ChallengePage(),
    PlansPage(),
    AccountPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        elevation: 0.0,
        //selectedItemColor: kOrangeColor,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Agenda'),
            backgroundColor: kIconColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.trophy),
            title: Text('Challenges'),
            backgroundColor: kIconColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_numbered),
            title: Text('Plans'),
            backgroundColor: kIconColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.account),
            title: Text('Account'),
            backgroundColor: kIconColor,
          ),
        ]
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}