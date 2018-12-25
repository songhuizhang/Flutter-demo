import 'package:flutter/material.dart';
import 'model/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('橙汁菌'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: '搜索',
                onPressed: () => debugPrint('点击了搜索按钮'),
              )
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black26,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.email),
                ),
                Tab(
                  icon: Icon(Icons.phone),
                ),
                Tab(
                  icon: Icon(Icons.blur_circular),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.email, size: 130.0, color: Colors.black12),
              Icon(Icons.phone, size: 130.0, color: Colors.black12),
              Icon(Icons.blur_circular, size: 130.0, color: Colors.black12),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('橙汁菌'),
                  accountEmail: Text('songhui25262@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/21076725?s=460&v=4'),
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
          )),
    );
  }
}
