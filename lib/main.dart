import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: List<String>.generate(100, (i) => "this is $i")));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'viewList',
      home: new Scaffold(
          body: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new ListTile(
                  title: Text('${items[index]}'),
                );
              })),
    );
  }
}
