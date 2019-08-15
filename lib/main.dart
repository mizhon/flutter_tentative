import 'package:flutter/material.dart';
import 'screens/lists/listview.dart';
import 'screens/splash/splash.dart';
import 'screens/counter/counter.dart';
import 'screens/lists/dynamic_listview.dart';
import 'common/utils.dart';

void main() {
  // 验证Dart解析JSON数据的方式 
  Future<Map<String, dynamic>> t = Utils.parseJsonFromAssets('lib/configs/settings.json');
  // print(t.asStream());
  t.then((onValue) {
    print("---> $onValue");
    print(onValue.containsKey("settings"));
  });

  runApp(TentativeApp());
}

class TentativeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 用户设置取消右上角debug样式
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: CounterPage(title: 'Flutter Tentative'),
      home: SplashPage(),
      routes: <String, WidgetBuilder> {
        // '/home': (BuildContext context) => CounterPage(title: 'Flutter Tentative')
        '/listview': (BuildContext context) => DynamicListViewScreen()
      }
    );
  }
}
