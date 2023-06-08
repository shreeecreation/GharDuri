import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/API/AllAPIEndpoints/all_endpoints.dart';
import 'package:ghardhuri/src/core/API/ManageCookie/managecookie.dart';
import 'package:ghardhuri/src/core/env/envmodels.dart';
import 'package:http/http.dart' as http;

class ToleAPI {
  static List<DropdownMenuItem<String>> allCategorys = [];
  static int dropDownIndex = 0;

  static Future<List<DropdownMenuItem<String>>> returnDropdown() async {
    List<DropdownMenuItem<String>> list = await toleAPI();
    return list;
  }

  static Future<List<DropdownMenuItem<String>>> toleAPI() async {
    var cookie = await ManageCookie.getCookie();
    List<DropdownMenuItem<String>> allCategory = [
      const DropdownMenuItem(value: '', child: Text('All')),
    ];

    final url = Uri.parse('${Environment.apiUrl}/${AllAPIEndpoint.toleapi}');
    try {
      final response = await http.get(url, headers: {
        'Cookie': cookie,
      });
      Map<String, dynamic> responseMap = jsonDecode(response.body);
      List<dynamic> categories = responseMap['data'];

      var code = response.statusCode;
      if (code == 200) {
        String? selectedValue;
        for (var category in categories) {
          String value = category['id'].toString();
          String label = category['name'];
          allCategory.add(
            DropdownMenuItem(
              value: value,
              child: Text(label),
            ),
          );
          if (value == selectedValue) {
            // Set the selected value if it matches
            selectedValue = value;
          }
        }
        return allCategory;
      } else {}
    } catch (e) {}
    return allCategory;
  }

  static Widget dropdownButton(BuildContext context, String? selectedValue, List<DropdownMenuItem<String>> menuItems) {
    return Center(
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width / 1.5,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0x00ffffff), width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0x00ffffff), width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
          ),
          validator: (value) => value == null ? "Farming Product" : null,
          dropdownColor: const Color(0xFFFFFFFF),
          value: selectedValue,
          onChanged: (String? newValue) {
            selectedValue = newValue;
          },
          items: menuItems,
        ),
      ),
    );
  }
}
