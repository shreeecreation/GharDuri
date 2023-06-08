import 'package:shared_preferences/shared_preferences.dart';

class ManageCookie {
  static Future<void> setCookie(cookie) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('cookie', "$cookie");
  }

  static Future<String> getCookie() async {
    var prefs = await SharedPreferences.getInstance();
    loginCookie = prefs.getString('cookie') ?? "";
    return prefs.getString('cookie') ?? "";
  }

  static String loginCookie = "";
}
