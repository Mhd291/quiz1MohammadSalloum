import 'package:shared_preferences/shared_preferences.dart';

class CashList{
  static Future<void> saveStringList(List<String> stringList,String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, stringList);
  }

  static Future<List<String>> getStringList(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key) ?? [];
  }
}