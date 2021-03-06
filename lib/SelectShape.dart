import 'dart:async';

import 'package:flutter/material.dart';

class SelectShapePage extends StatefulWidget {
  SelectShapePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _SelectShapePageState createState() => _SelectShapePageState();
}

class _SelectShapePageState extends State<SelectShapePage> {
  int _counter = 10;
  Timer t;

  @override
  void initState() {
    super.initState();
    _counter = 10;
    t = Timer.periodic(Duration(seconds: 1), (Timer t) {
      print('counter:$_counter');
      if (_counter == 0) {
        t.cancel();
        return;
      }
      setState(() {
        _counter--;
      });
    });

  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
                child: Padding(padding: EdgeInsets.all(10.0), child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Memorise the below shape sequence', style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                      Text('   $_counter', style: TextStyle(color: Colors.deepPurple, fontSize: 20.0))
              ]
                )),
            ),
            Padding(padding: EdgeInsets.all(30.0), child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(30.0), child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/circle.png', height: 50),
                                  ]
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/square.png', height: 50),
                                  ]
                              )
                            ]
                        ),
                        ),
                        Padding(padding: EdgeInsets.all(20.0), child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/star.png', height: 50),
                                  ]
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/triangle.png', height: 50),
                                  ]
                              )
                            ]
                        ),
                        ),
                      ]
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(30.0), child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/star.png', height: 50),
                                  ]
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/circle.png', height: 50),
                                  ]
                              )
                            ]
                        ),
                        ),
                        Padding(padding: EdgeInsets.all(20.0), child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/square.png', height: 50),
                                  ]
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/triangle.png', height: 50),
                                  ]
                              )
                            ]
                        ),
                        ),
                      ]
                  )
                ]
            ),
            ),
            Padding(padding: EdgeInsets.all(20.0), child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(30.0), child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/circle.png', height: 50),
                                  ]
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/star.png', height: 50),
                                  ]
                              )
                            ]
                        ),
                        ),
                        Padding(padding: EdgeInsets.all(20.0), child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/square.png', height: 50),
                                  ]
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/triangle.png', height: 50),
                                  ]
                              )
                            ]
                        ),
                        ),
                      ]
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(30.0), child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/circle.png', height: 50),
                                  ]
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/star.png', height: 50),
                                  ]
                              )
                            ]
                        ),
                        ),
                        Padding(padding: EdgeInsets.all(20.0), child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/triangle.png', height: 50),
                                  ]
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset('images/square.png', height: 50),
                                  ]
                              )
                            ]
                        ),
                        ),
                      ]
                  )
                ]
            ),
            ),
          ],
        ),
      ),
    );
  }
}
