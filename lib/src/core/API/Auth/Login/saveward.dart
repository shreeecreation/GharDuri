import 'package:shared_preferences/shared_preferences.dart';

class WardManager {
  static Future<void> setCookie(cookie) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('ward', "$cookie");
  }

  static Future<String> getCookie() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('ward') ?? "";
  }
}
