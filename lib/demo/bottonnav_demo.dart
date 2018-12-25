import 'package:flutter/material.dart';

class BottomNavDemo extends StatefulWidget {
  _BottomNavDemo createState() => _BottomNavDemo();
}

class _BottomNavDemo extends State<BottomNavDemo> {
  int _currentIndex = 0;
  void _onTapHandler (int index) {
    setState((){
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.edit),
          title: Text('edit'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('my'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('List'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone),
          title: Text('phone'),
        ),
      ],
    );
  }
}

