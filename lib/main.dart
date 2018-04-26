import 'package:flutter/material.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#\$%^&*()`~':;?><.,",
              style: new TextStyle(fontFamily: 'Xwing', fontSize: 28.0),
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}