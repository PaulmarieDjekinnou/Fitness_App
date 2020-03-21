import 'package:fitnessApp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class ActivitiesPage extends StatefulWidget {
  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {

  CalendarController _calendarController;
  
  @override
  void initState() { 
    super.initState();
    _calendarController = CalendarController();  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          MdiIcons.calendarMonth,
          color: kOrangeColor,
          size: 30.0,
        ),
        title: Text(
          "Month",
          style: TextStyle(
            color: kOrangeColor,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: kOrangeColor,
              size: 30.0,
            ), 
            onPressed: null
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              color: kOrangeColor,
              size: 30.0,
            ),
            onPressed: null
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Text(
              'Activities',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          TableCalendar(
            initialCalendarFormat: CalendarFormat.month,
            calendarStyle: CalendarStyle(
              todayColor: kOrangeColor,
              selectedColor: Colors.blue,
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              centerHeaderTitle: true
            ),
            calendarController: _calendarController
          )
        ],
      ),
    );
  }
}