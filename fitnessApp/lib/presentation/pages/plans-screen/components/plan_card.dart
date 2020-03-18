import 'package:fitnessApp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PlanCard extends StatefulWidget {
  @override
  _PlanCardState createState() => _PlanCardState();
}



class _PlanCardState extends State<PlanCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0,0,0,10),
      child: Container(
        width: 200.0,
        height: 230.0,
        child: Card(
          elevation: 0.0,
          color: kActivityColor,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Text(
                  "Last Practice"
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Text(
                  "Goal",
                  style:TextStyle(
                    fontSize:15,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 10.0,
                  circularStrokeCap: CircularStrokeCap.round,
                  percent: 0.5,
                  backgroundColor: kDateColor,
                  progressColor: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Text(
                  "Practice left"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}