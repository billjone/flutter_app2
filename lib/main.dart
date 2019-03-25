// This example makes a [Container] react to being entered by a mouse
// pointer, showing a count of the number of entries and exits.

import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';

import "package:flare_flutter/flare_actor.dart";
import 'package:flare_dart/math/mat2d.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for widgets.Listener',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(children: <Widget>[
      new ClipOval(
        child: new Image(
          image: new AssetImage("animations/ddd.png"),
          width: 500.0,
          height: 800.0,
          fit: BoxFit.cover,
        ),
      ),
      new Opacity(
        opacity: 0.9,
        child: new FlareActor("animations/flare.flr", animation: "Untitled"),
      ),
      new Opacity(
        opacity: 0.9,
        child: new FlareActor("animations/newfile.flr", animation: "Untitled"),
      ),

    ]),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );;
  }
}
