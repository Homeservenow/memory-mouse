import 'dart:async';

import 'package:MemoryMouse/SelectShape.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColoredPage extends StatefulWidget {
  ColoredPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ColoredPageState createState() => _ColoredPageState();
}

class _ColoredPageState extends State<ColoredPage> {
  int _counter = 9;
  var backgroundColor = Colors.orangeAccent;

  Timer t;

  @override
  void initState() {
    super.initState();
    _counter = 9;
    t = Timer.periodic(Duration(seconds: 1), (Timer t) {
      print('counter:$_counter');
      if (_counter == 3) {
        setState(() {
          backgroundColor = Colors.blueAccent;
        });
      } else if(_counter == 6) {
        setState(() {
          backgroundColor = Colors.pinkAccent;
        });
      } else if(_counter == 0) {
        t.cancel();
        route();
        return;
      }
      setState(() {
        _counter--;
      });
    });

  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => SelectShapePage(title: 'Memory Mouse')
    )
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: backgroundColor),
    );
  }
}
