import 'package:flutter/material.dart';

import 'package:xwingacapp/model/pilot.dart';

class PilotCard extends StatelessWidget {
  final Pilot _pilot;

  PilotCard(this._pilot);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 80.0,
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new CircleAvatar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              child: new Text('${_pilot.pilotSkill}', style: new TextStyle(fontSize: 25.0),),
            ),
          ),
          new Expanded(
            child: new Text('Callsign'),
          ),
          new Expanded(
            child: new Text('${_pilot.callsign}'),
          )
        ],
      ),
    );
  }
}