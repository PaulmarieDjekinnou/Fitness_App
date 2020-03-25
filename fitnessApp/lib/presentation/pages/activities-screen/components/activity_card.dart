import 'package:fitnessApp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActivityCard extends StatefulWidget {
  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 0,
      color: kActivityColor,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0,10,0,0),
                child: Icon(
                 MdiIcons.football,
                 color: kOrangeColor,
                 size:35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0,0,0,10),
                child: Text(
                  "ActivityName",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "0,3",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: kOrangeColor
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text("km"),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right:15.0),
                child: Text(
                  "Today at 13h00",
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}