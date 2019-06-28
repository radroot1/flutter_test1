import 'package:flutter/material.dart';
import 'tabs/navTest.dart' as navTest;
import 'tabs/listView.dart' as listView;
import 'tabs/counter.dart' as counterView;
import 'tabs/examplesList.dart' as examplesList;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "New Task",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: Material(
        child: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              icon: Icon(Icons.email),
            ),
            Tab(
              icon: Icon(Icons.access_time),
            ),
            Tab(
              icon: Icon(Icons.adjust),
            ),
          ],
          controller: _tabController,
        ),
        color: Colors.blue,
      ),
      body: TabBarView(
        children: [
          new Container(
            color: Colors.yellow,
            child:counterView.Page()
          ),
          new Container(
            color: Colors.white,
            child: listView.Page()
          ),
          new Container(
            color: Colors.white,
            child: navTest.FirstRoute()
          ),
          new Container(
            color: Colors.red,
            child:examplesList.ListView()
          ),
        ],
        controller: _tabController,
      ),
    );
  }
}