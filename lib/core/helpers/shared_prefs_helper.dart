//I can use this class in all my projects
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  //make this constructor private as i do not want to create instance from it.
  SharedPrefsHelper._();
  static void removeData(String key) async {
    debugPrint("Shared pref heelper : data with key : $key has been removed");
    final shared = await SharedPreferences.getInstance();
    await shared.remove(key);
  }

  static void clearAllData() async {
    final shared = await SharedPreferences.getInstance();
    await shared.clear();
  }

  ///save a [value] with a [key] in the shared preferences.
  static Future<void> setData(String key, value) async {
    final shared = await SharedPreferences.getInstance();
    debugPrint(
        "save a [value] $value with a [key] $key in the shared preferences.");
    switch (value.runtimeType) {
      case String:
        await shared.setString(key, value);
        break;
      case int:
        await shared.setInt(key, value);
        break;
      case double:
        await shared.setDouble(key, value);
        break;
      case bool:
        await shared.setBool(key, value);
        break;
      default:
        return;
    }
  }

  static Future<String> getString(String key) async {
    debugPrint("Shared prefs get string with key $key");
    final shared = await SharedPreferences.getInstance();
    return shared.getString(key) ?? "";
  }

  static Future<int> getInt(String key) async {
    debugPrint("Shared prefs get int with key $key");
    final shared = await SharedPreferences.getInstance();
    return shared.getInt(key) ?? 0;
  }

  static Future<double> getDouble(String key) async {
    debugPrint("Shared prefs get double with key $key");
    final shared = await SharedPreferences.getInstance();
    return shared.getDouble(key) ?? 0.0;
  }

  static Future<bool> getBool(String key) async {
    debugPrint("Shared prefs get bool with key $key");
    final shared = await SharedPreferences.getInstance();
    return shared.getBool(key) ?? false;
  }

//Set secured string
  static Future<void> setSecuredString(
    String key,
    String value,
  ) async {
    debugPrint("setSecuredString key $key value $value");
    const storage = FlutterSecureStorage();
    await storage.write(key: key, value: value);
  }

  static Future<String> getSecuredString(
    String key,
  ) async {
    debugPrint("setSecuredString key $key ");
    const storage = FlutterSecureStorage();
    return await storage.read(
          key: key,
        ) ??
        "";
  }

  static Future<void> clearSecuredString(
    String key,
  ) async {
    debugPrint("setSecuredString key $key ");
    const storage = FlutterSecureStorage();
    await storage.deleteAll();
  }
}
