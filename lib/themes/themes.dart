import 'package:flutter/material.dart';

/**
 * 通用字体设置
 */
class CommonText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  CommonText(this.text, this.size, this.color);

  @override
  Widget build(context) {
    return Text (
      text,
      style: TextStyle(
        fontSize: this.size
      ),
    );
  }
}