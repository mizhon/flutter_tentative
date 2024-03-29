import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_tentative/screens/counter/counter.dart';
import 'package:flutter_tentative/screens/lists/dynamic_listview.dart';
import 'package:flutter_tentative/screens/lists/listview.dart';
import 'package:flutter_tentative/screens/splash/scaleRoute.dart';

class SplashPage extends StatefulWidget {
  SplashPage();

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  startTime() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, _navigationPage);
  }

  // TODO: 创建一个获取 [PageRouteBuilder] widget 的方法，用于设置路由信息

  void _navigationPage() {
    // Navigator.of(context).pushReplacementNamed('/Home');
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (BuildContext context) => DynamicListViewScreen()
      )
      // ScaleRoute(widget: CounterPage(title: 'Flutter Tentative'))
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FlutterLogo(),
          Center(
            // child: Container(
            //   child: Icon(
            //     Icons.sentiment_satisfied,
            //     size: 100.0,
            //     color: Colors.blue
            //   ),
            // )
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  // width: 350.0,
                  // height: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300.withOpacity(0.5)
                  ),
                  child: Center(
                    child: Text(
                      'Frosted',
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}