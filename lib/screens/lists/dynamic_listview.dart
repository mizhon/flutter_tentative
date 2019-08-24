import 'package:flutter/material.dart';

class DynamicListViewScreen extends StatelessWidget {
  final List<String> itemList = ["北京市", "上海市", "深圳市", "杭州市"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("动态 ListView 示例")),
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
                            fontSize: 24.0,
                            color: Colors.green,
                            backgroundColor: Colors.lime,
                            height: 1.0),
                      ),
                      Icon(
                        Icons.backup,
                      ),
                      // Image.network("http://img.rangaofei.cn/01b18.jpg")
                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }
}
