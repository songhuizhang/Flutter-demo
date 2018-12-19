
import 'package:flutter/material.dart';
import 'package:flutter_app/model/data.dart';

class ListViewEX extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].url,width: 400,fit: BoxFit.cover,),
          SizedBox(
            height: 16.0,
          ),
          Text(posts[index].name, style: Theme.of(context).textTheme.title),
          Text('评分：' + posts[index].rate, style: Theme.of(context).textTheme.subhead),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      );
    }
}