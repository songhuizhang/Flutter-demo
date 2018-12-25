import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('橙汁菌'),
            accountEmail: Text('songhui25262@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars2.githubusercontent.com/u/21076725?s=460&v=4'),
            ),
          ),
          ListTile(
            title: Text(
              '主页',
              textAlign: TextAlign.left,
            ),
            leading: Icon(Icons.home),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              '归档',
              textAlign: TextAlign.left,
            ),
            leading: Icon(Icons.archive),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              '分类',
              textAlign: TextAlign.left,
            ),
            leading: Icon(Icons.category),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              '标签',
              textAlign: TextAlign.left,
            ),
            leading: Icon(Icons.filter_b_and_w),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              '设置',
              textAlign: TextAlign.left,
            ),
            leading: Icon(Icons.settings),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
