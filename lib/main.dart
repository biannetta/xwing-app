import 'package:flutter/material.dart';

import 'package:xwingacapp/model/pilot.dart';
import 'package:xwingacapp/ui/pilotCard.dart';
import 'package:xwingacapp/model/localStorage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Heros of the Aturi Cluster',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Xwing(title: "Hero's of the Aturi Cluster"),
    );
  }
}

class Xwing extends StatefulWidget {
  Xwing({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _XwingState createState() => new _XwingState();
}

class _XwingState extends State<Xwing> {
  LocalStorage storage;
  Pilot _pilot = new Pilot("Renson", 2);

  @override
  void initState() {
    super.initState();
    storage = new LocalStorage('xwingpilots');
    storage.readStorage().then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new PilotCard(_pilot),
          ],
        ),
      ),
    );
  }
}