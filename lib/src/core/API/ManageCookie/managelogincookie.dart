import 'package:shared_preferences/shared_preferences.dart';

import 'managecookie.dart';

class ManageLoginCookie {
  static void setCookie(response) async {
    var cookieHeader = response!.headers['set-cookie'];
    ManageCookie.setCookie(cookieHeader);
  }

  static void deleteCookie() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
