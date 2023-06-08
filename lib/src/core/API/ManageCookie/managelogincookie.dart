import 'package:shared_preferences/shared_preferences.dart';

import 'managecookie.dart';

class ManageLoginCookie {
  static void setCookie(response) async {
    var cookieHeader = response!.headers['set-cookie'];
    ManageCookie.setCookie(cookieHeader);
  }

  static void deleteCookie() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("ward");
    prefs.remove("cookie");
  }
}
