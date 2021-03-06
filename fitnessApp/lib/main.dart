import 'package:fitnessApp/theme/colors.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/app_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        primaryColor: kOrangeColor,
      ),
      home: AppPage(),
    );
  }
}
