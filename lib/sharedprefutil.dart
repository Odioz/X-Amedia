import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefUtils {
  static savePrefStr(String key, String message) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(key, message);
  }

  static Future<String> readPrefStr(String key) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String ss = pref.getString(key);
    return ss;
  }
}
