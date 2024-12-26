import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManager {
  final SharedPreferences _sharedPreferences;

  SharedPrefManager(this._sharedPreferences);

  Future<void> setMobileNumber(String baseURL) async {
    await _sharedPreferences.setString('PHONE', baseURL);
  }

  String getMobileNumber() {
    return _sharedPreferences.getString('PHONE') ?? "";
  }

  Future<void> clear() async {
    await _sharedPreferences.clear();
  }
}
