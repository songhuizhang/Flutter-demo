import 'package:flutter/material.dart';
import 'model/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context,int index) {
    return Text(posts[index].name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SONGHUI'),
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        ),
      );
  }
}

class Hello extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

      return Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87
        ),
      ),
    );;
    }
}
