import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePrefs {
  // to set the theme value in shared preferences
  static const key = 'Theme Status'; // to initialize the key
  setDarkTheme(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(key, value);
  }

  // to (get) the theme value
  Future<bool> getDarkTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    // ?? null check cause we don't have a default OR initial value (true - false)
    return preferences.getBool(key) ?? false;
  }
}
