import 'package:shared_preferences/shared_preferences.dart';

abstract class UserLocalDataSource {
  Future<void> setEmail(String email);
  Future<String?> getEmail();
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  final SharedPreferences prefs;
  static const String emailKey = 'email';

  UserLocalDataSourceImpl(this.prefs);

  @override
  Future<void> setEmail(String email) async {
    await prefs.setString(emailKey, email);
  }

  @override
  Future<String?> getEmail() async {
    return prefs.getString(emailKey);
  }
}
