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
          child: Text(
            'Hello World,这句话好长啊啊啊啊啊啊啊啊啊！！！！！！！！！！！！！',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w500,
              color: Colors.green,
              decoration: TextDecoration.underline
            ),
          ),
        ),
      ),
    );
  }
}

