import 'package:flutter/material.dart';
import 'views/counter.dart';
import 'common/utils.dart';

void main() {
  Future<Map<String, dynamic>> t = Utils.parseJsonFromAssets('lib/configs/settings.json');
  // print(t.asStream());
  t.then((onValue) {
    print('---> $onValue');
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 用户设置取消右上角debug样式
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(title: 'Flutter Tentative'),
    );
  }
}
