import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView")
      ),
      body: ListView(
        children: <Widget>[
          Card (
            child: ListTile(
              leading: Icon(
                Icons.markunread,
                color: Colors.blue
              ),
              title: Text(
                '敏捷数据看板',
                style: TextStyle(fontFamily: 'RobotoMono'),
              ),
              subtitle: Text('子任务'),
              selected: false,
              trailing: Icon(
                Icons.arrow_forward_ios
              ),
            ),
          ),
          Card (
            child: ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
          ),
          
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
        ],
      ),
    );
  }
}