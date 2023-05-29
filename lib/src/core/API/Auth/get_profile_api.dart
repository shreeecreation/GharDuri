import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/API/AllAPIEndpoints/all_endpoints.dart';
import 'package:ghardhuri/src/core/API/ManageCookie/managecookie.dart';
import 'package:ghardhuri/src/core/ProfileModel/profile_model.dart';
import 'package:ghardhuri/src/core/Routes/QuestionRoutes/question_routes.dart';
import 'package:http/http.dart' as http;

class GetProfile {
  static Future<http.Response?> getProfile() async {
    final url = Uri.parse(AllAPIEndpoint.profileapi); // Replace with your API endpoint URL
    var cookie = await ManageCookie.getCookie();

    try {
      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json', 'Cookie': cookie}, // Replace with your headers if needed
      );
      var code = response.statusCode;
      if (code >= 200 && code < 300) {
        print(response.body);
        // Convert the response JSON string into a Map
        Map<String, dynamic> jsonData = jsonDecode(response.body);

        // Extract the "ward" value
        int ward = jsonData['data']['ward'];
        String fullName = jsonData['data']['profile']['fullName'];
        String role = jsonData['data']['role'];
        String phoneNumber = jsonData['data']['number'];
        String documentCount = jsonData['data']['documentCount'];
        String picture = jsonData['data']['profile']['image'];
        ProfileModel.fullName = fullName;
        ProfileModel.role = role;
        ProfileModel.phoneNumber = phoneNumber;
        ProfileModel.documentCount = documentCount;
        ProfileModel.picture = picture;
        ProfileModel.ward = ward.toString();
        print(ProfileModel.ward);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          QuestionRoute.navigatorRoute();

          // LoginDialogs().showIncorrectPassword(context);
        });
        return response;
      } else if (code == 400) {
      } else if (code == 500) {}
      return null;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
