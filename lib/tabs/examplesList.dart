import 'package:flutter/material.dart';
import 'animations/01particle.dart' as particles;
import 'animations/02logo.dart' as logo;
import 'animations/03chart.dart' as chart;
import 'animations/04hero.dart' as hero;
import 'animations/05heroAnimation.dart' as heroA;

class ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gists'),
      ),
      body: Center(
        child: Column(
            children:[
              RaisedButton(
                child: Text('Particles'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => particles.Page()),
                  );
                },
              ),
              RaisedButton(
                child: Text('Logo fade'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => logo.LogoApp()),
                  );
                },
              ),
              RaisedButton(
                child: Text('Chart'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chart.ChartPage()),
                  );
                },
              ),
              RaisedButton(
                child: Text('Hero'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => hero.HeroApp()),
                  );
                },
              ),
              RaisedButton(
                child: Text('Hero animatiobn'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => heroA.HeroAnimation()),
                  );
                },
              ),
            ]
        )
      ),
    );
  }
}
