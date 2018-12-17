import 'package:flutter/material.dart';

void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'viewList',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ViewList'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text('access_alarm'),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text('access_time'),
            ),
            new ListTile(
              leading: new Icon(Icons.adb),
              title: new Text('adb'),
            ),
            new ListTile(
              leading: new Icon(Icons.book),
              title: new Text('book'),
            ),
            new ListTile(
              leading: new Icon(Icons.brightness_3),
              title: new Container(
                child: new Image.network('https://avatars2.githubusercontent.com/u/21076725?s=460&v=4'),
                width: 40.0,
                height: 35.0,
                alignment: Alignment.topLeft,
              ),
            )
          ],
        ),
      ),
    );
  }
}