import 'components/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../theme/colors.dart';


class PlansPage extends StatefulWidget {
  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              MdiIcons.filter,
              color: kOrangeColor,
              size: 30.0,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              color: kOrangeColor,
              size: 30.0,
            ),
            onPressed: null,
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Text(
              'Plans',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              
              childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.25),),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index){
                return PlanCard();
              },
            ),
          ),
        ]
      )
    );
  }
}