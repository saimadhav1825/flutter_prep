import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  static late SharedPreferences _sharedHelper;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _sharedHelper = await SharedPreferences.getInstance();
    return _sharedHelper;
  }

  //sets
  static Future<bool> setBool(String key, bool value) async =>
      await _sharedHelper.setBool(key, value);

  static Future<bool> setDouble(String key, double value) async =>
      await _sharedHelper.setDouble(key, value);

  static Future<bool> setInt(String key, int value) async =>
      await _sharedHelper.setInt(key, value);

  static Future<bool> setString(String key, String value) async =>
      await _sharedHelper.setString(key, value);

  static Future<bool> setStringList(String key, List<String> value) async =>
      await _sharedHelper.setStringList(key, value);

  //gets
  static bool getBool(String key) => _sharedHelper.getBool(key) ?? false;

  static double getDouble(String key) => _sharedHelper.getDouble(key) ?? 0.0;

  static int getInt(String key) => _sharedHelper.getInt(key) ?? 0;

  static String getString(String key) => _sharedHelper.getString(key) ?? "";

  static List<String> getStringList(String key) =>
      _sharedHelper.getStringList(key) ?? [];

  //deletes..
  static Future<bool> remove(String key) async =>
      await _sharedHelper.remove(key);

  static Future<bool> clear() async => await _sharedHelper.clear();
}
