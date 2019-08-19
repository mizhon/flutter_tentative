import 'package:flutter/material.dart';

class SkeletonScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SkeletonScreenState();
  }
}

class _SkeletonScreenState extends State<SkeletonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World App')
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.mail),
           title: Text('Messages'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         ),
        ],
      ),
    );
  }
}