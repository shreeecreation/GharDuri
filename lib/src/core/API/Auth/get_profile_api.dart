import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/API/AllAPIEndpoints/all_endpoints.dart';
import 'package:ghardhuri/src/core/API/Auth/setward.dart';
import 'package:ghardhuri/src/core/API/ManageCookie/managecookie.dart';
import 'package:ghardhuri/src/core/ProfileModel/profile_model.dart';
import 'package:http/http.dart' as http;

class GetProfile {
  static Future<ProfileModel?> getProfile() async {
    final url = Uri.parse(AllAPIEndpoint.profileapi);
    var cookie = await ManageCookie.getCookie();

    try {
      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json', 'Cookie': cookie},
      );

      var code = response.statusCode;
      if (code >= 200 && code < 300) {
        Map<String, dynamic> jsonData = jsonDecode(response.body);
        ProfileModel model = ProfileModel();

        int ward = jsonData['data']['ward'];
        String fullName = jsonData['data']['profile']['fullName'];
        String role = jsonData['data']['role'];
        String phoneNumber = jsonData['data']['number'];
        int documentCount = jsonData['data']['documentCount'];
        String picture = jsonData['data']['profile']['image'];
        print(response.body);
        await Future.delayed(Duration.zero); // Add a delay before continuing execution

        model.fullName = fullName;
        model.role = role;
        model.phoneNumber = phoneNumber;
        model.documentCount = documentCount.toString();
        model.picture = picture;
        model.ward = ward.toString();
        WardNo.wardno = model.ward;

        WidgetsBinding.instance.addPostFrameCallback((_) {
          print(picture);
          // QuestionRoute.navigatorRoute();
        });

        return model;
      } else if (code == 400) {
        // Handle error code 400
      } else if (code == 500) {
        // Handle error code 500
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
