import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class CashUser{
  static Future<void> saveUser(Map<String,dynamic> user,String key) async {
    String userJson = jsonEncode(user);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, userJson);
  }

  static Future<Map<String,dynamic>> getUser(String key) async {
    final prefs = await SharedPreferences.getInstance();
    var json = prefs.getString(key)??"{}";
     var decodedData =jsonDecode(json);
    Map<String, dynamic> userMap = decodedData ;
    return userMap;
  }
}