import 'package:flutter/material.dart';

class DynamicListViewScreen extends StatelessWidget {

  List<String> itemList = ["1", "2", "3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动态 ListView 示例")
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      itemList[index],
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.green
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      )
    );
  }
}