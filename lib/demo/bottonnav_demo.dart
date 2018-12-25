import 'package:flutter/material.dart';

class BottomNavDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green,
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