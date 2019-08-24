import 'package:flutter/material.dart';

///
/// @description: 屏幕适配器
///
class ScreenAdaptor {
  static double width;
  static double height;
  static double top;
  static double bottom;
  static double _ratio;
  static double _devicePixelRatio;
  // 默认width为750
  static void init(BuildContext context, [double width = 750]) {
    MediaQueryData queryData = MediaQuery.of(context);
    _devicePixelRatio = queryData.devicePixelRatio;
    width = queryData.size.width;
    height = queryData.size.height;
  }
}
