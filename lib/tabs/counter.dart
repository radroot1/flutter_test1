import 'dart:async';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:developer' as developer;
import 'dart:convert';

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Number Count",
      theme: new ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home: new NumberCountDemo(),
    );
  }
}
class NumberCountDemo extends StatefulWidget {
  @override
  _NumberCountDemoState createState() => new _NumberCountDemoState();

}

class _NumberCountDemoState extends State<NumberCountDemo> {
  int _n = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Number Count")
      ),
      body: new Container(
        child: new Center(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new FloatingActionButton(
                onPressed: add,
                child: new Icon(Icons.add, color: Colors.black,),
                backgroundColor: Colors.white,),

              new Text('$_n',
                  style: new TextStyle(fontSize: 60.0)),

              new FloatingActionButton(
                onPressed: minus,
                child: new Icon(
                    const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                    color: Colors.black),
                backgroundColor: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }


}

