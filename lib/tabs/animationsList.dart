import 'package:flutter/material.dart';
import 'animations/first.dart' as first;

class ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: Column(
            children:[
              RaisedButton(
                child: Text('Simple animation'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => first.Page()),
                  );
                },
              ),
              RaisedButton(
                child: Text('Simple animation #2'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => first.Page()),
                  );
                },
              ),
            ]
        )
      ),
    );
  }
}
