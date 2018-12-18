import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'viewList',
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('ViewList'),
          ),
          body: Container(height: 200, child: MyList())),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 100,
          color: Colors.green,
        ),
        Container(
          width: 100,
          color: Colors.red,
        ),
        Container(
          width: 100,
          color: Colors.pink,
        ),
        Container(
          width: 100,
          color: Colors.grey,
        ),
        Container(
          width: 100,
          color: Colors.lightBlue,
        ),
        Container(
          width: 100,
          color: Colors.cyan,
        ),
      ],
    );
  }
}
