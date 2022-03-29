import 'package:flutter_modular/app/interfaces/local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService implements ILocalStorage {
  @override
  Future delete(String key) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  @override
  Future get(String key) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  @override
  Future put(String key, dynamic value) async {
    var prefs = await SharedPreferences.getInstance();
    if (value is String) {
      prefs.setString(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    } else if (value is int) {
      prefs.setInt(key, value);
    } else if (value is double) {
      prefs.setDouble(key, value);
    }
  }
}
