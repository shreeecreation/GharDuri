import 'dart:convert';

import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/familyNo.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Map<String, dynamic>> getJsonPrefs() async {
  final prefs = await SharedPreferences.getInstance();
  final jsonString = prefs.getString('json_prefs');
  if (jsonString != null) {
    return json.decode(jsonString);
  }
  return {};
}

Future<void> saveJsonPrefs(Map<String, dynamic> jsonPrefs) async {
  final prefs = await SharedPreferences.getInstance();
  final jsonString = json.encode(jsonPrefs);
  await prefs.setString('json_prefs', jsonString);
}

Future<void> saveJsonFile(Map<String, dynamic> jsonFile) async {
  final jsonPrefs = await getJsonPrefs();
  jsonPrefs[FamilyNumber.familyNumber] = jsonFile;
  await saveJsonPrefs(jsonPrefs);
}

Future<void> clearJsonPrefs() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('json_prefs');
}

Future<List> getJsonPrefsKeys() async {
  final prefs = await SharedPreferences.getInstance();
  final jsonString = prefs.getString('json_prefs');
  if (jsonString != null) {
    final jsonArray = json.decode(jsonString) as List<dynamic>;
    return jsonArray.map((jsonObject) => jsonObject.keys.first).toList();
  }
  return [];
}

Future<void> deleteSpecificElement(String key) async {
  final jsonPrefs = await getJsonPrefs();

  jsonPrefs.remove(key);

  await saveJsonPrefs(jsonPrefs);
}

Future<void> printJsonPrefs() async {
  final jsonPrefs = await getJsonPrefs();
  jsonPrefs.forEach((key, value) {});
}

Future<Map<String, dynamic>> getAllJsonPrefs() async {
  return await getJsonPrefs();
}
