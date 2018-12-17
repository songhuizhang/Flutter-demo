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
            child: new Text(
              '这个是容器，相当于前端的div',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline
              ),
            ),
            alignment: Alignment.center,
            width: 500.0,
            height: 500.0,
            // color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(20.0, 40.0, 30, 0),
            margin: const EdgeInsets.all(10),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.lightBlue,Colors.white,Colors.pink]
              ),
              border: Border.all(
                width: 5.0,
                color: Colors.grey
              )
            ),
          )
        ),
      ),
    );
  }
}

