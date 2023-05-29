import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Auth/Login/check_login.dart';
import 'package:ghardhuri/src/core/API/AllAPIEndpoints/all_endpoints.dart';
import 'package:ghardhuri/src/core/API/Auth/get_profile_api.dart';
import 'package:ghardhuri/src/core/API/ManageCookie/managelogincookie.dart';
import 'package:ghardhuri/src/core/Dialog%20Boxes/auth/logindialog.dart';
import 'package:ghardhuri/src/core/Routes/QuestionRoutes/question_routes.dart';
import 'package:http/http.dart' as http;

class LoginAPI {
  static Future<http.Response?> loginPoint(String phoneNo, String password, BuildContext context) async {
    final url = Uri.parse(AllAPIEndpoint.loginAPI); // Replace with your API endpoint URL

    final data = {'number': phoneNo, 'password': password};
    try {
      final response = await http.post(
        url,
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json'}, // Replace with your headers if needed
      );
      var code = response.statusCode;
      print(code);
      if (code >= 200 && code < 300) {
          await GetProfile.getProfile();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ManageLoginCookie.setCookie(response);
          CheckLogin.setLoginInValue(true);
          QuestionRoute.navigatorRoute();

          // LoginDialogs().showIncorrectPassword(context);
        });
        return response;
      } else if (code == 400) {
         WidgetsBinding.instance.addPostFrameCallback((_) {
        LoginDialog.showIncorrectPassword(context);
        });
      } else if (code == 500) {}
      return null;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
