// This is a common Utils class to store common methods
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Utils {
  static String sayHi() {
    return 'Hi';
  }

  static Future<Map<String, dynamic>> parseJsonFromAssets(
      String assetJsonPath) async {
    print('--- Parse json from: $assetJsonPath');
    return rootBundle.loadString(assetJsonPath).then((jsonStr) {
      // print("This is a testing $jsonStr");
      return jsonDecode(jsonStr);
    });
  }
}
