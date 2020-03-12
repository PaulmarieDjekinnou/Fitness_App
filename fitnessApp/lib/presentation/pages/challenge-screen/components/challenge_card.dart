import 'package:fitnessApp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ChallengeCard extends StatelessWidget {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'ChallengeName',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kTextColor
                  ),
                ),
              ),
              IconButton(
                icon: Icon(MdiIcons.dotsVertical),
                onPressed: null)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(
              "Challenge Time left",
              style: TextStyle(
                fontSize:18,
                color: kOrangeColor
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text(
                  'Challenge Description',
                  style: TextStyle(
                    fontSize:15,
                    color: kIconColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:10.0),
                child: Icon(
                  MdiIcons.accountCircle,
                  size: 35,
                ),
              )
            ],
          )
        ],
        )
    );
  }
}