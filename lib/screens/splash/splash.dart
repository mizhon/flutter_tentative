import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tentative/screens/counter/counter.dart';

class SplashPage extends StatefulWidget {
  SplashPage();

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, _navigationPage);
  }

  void _navigationPage() {
    // Navigator.of(context).pushReplacementNamed('/Home');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CounterPage(title: 'Flutter Tentative')));
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
        children: <Widget>[
          Container(
            
          )
        ],
      ),
    );
  }
}