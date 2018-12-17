import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
          child: Container(
            child: new Image.network(
              'https://avatars2.githubusercontent.com/u/21076725?s=460&v=4',
              color: Colors.orange,
              colorBlendMode: BlendMode.color,
              repeat: ImageRepeat.repeatY,
            ),
            width: 500.0,
            height: 500.0,
            color: Colors.lightBlue,
          )
        ),
      ),
    );
  }
}

