import 'package:fitnessApp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Column(
                  children : <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom:15.0),
                      child: Text(
                        "Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                    Text(
                      "View and edit profil",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: kTextColor
                      ),
                    ),
                  ] 
                ),
              ), 
              Padding(
                padding: const EdgeInsets.only(right:10.0),
                child: CircleAvatar(
                  child: FlutterLogo(
                    size: 60.0
                  ),
                  backgroundColor: Colors.black,
                  radius: 40.0
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(10.0,50.0,10.0,0),
              children: <Widget>[
                Container(
                  height: 90.0,
                  child: Card(
                    elevation: 0.0,
                    color: kDateColor,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.notifications_none,
                            color: kLightOrangeColor,
                            size: 40,
                          ), 
                        onPressed: null),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:10.0),
                              child: Text(
                                "Notification",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10.0),
                              child: Text(
                                "Modify notification settings"
                              ),
                            )
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: kLightOrangeColor,
                            size: 30,
                          ),
                          onPressed: null)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 90.0,
                  child: Card(
                    elevation: 0.0,
                    color: kDateColor,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: kLightOrangeColor,
                            size: 40,
                          ), 
                        onPressed: null),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:10.0),
                              child: Text(
                                "Options",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10.0),
                              child: Text(
                                "Manage app settings"
                              ),
                            )
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: kLightOrangeColor,
                            size: 30,
                          ),
                          onPressed: null)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 90.0,
                  child: Card(
                    elevation: 0.0,
                    color: kDateColor,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            MdiIcons.accountPlusOutline,
                            color: kLightOrangeColor,
                            size: 40,
                          ), 
                        onPressed: null),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:10.0),
                              child: Text(
                                "Invite friends",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10.0),
                              child: Text(
                                "Invite your friends to use app"
                              ),
                            )
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: kLightOrangeColor,
                            size: 30,
                          ),
                          onPressed: null)
                      ],
                    ),
                  ),
                ),
              ]
            ),
          )
        ],
      ),
    );
  }
}
