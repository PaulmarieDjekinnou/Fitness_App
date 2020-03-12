import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import 'components/challenge_card.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: kOrangeColor,
              size: 30.0,
            ),
            onPressed: null,
          )
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
              'Challenges',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return ChallengeCard();
              }
            ),
          )
        ],
      )
    );
  }
}