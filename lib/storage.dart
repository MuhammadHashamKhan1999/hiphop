import 'package:get_storage/get_storage.dart';
import '../utils/constants.dart';

class Storage {

  static const String authorizationToken = 'authorization_token';
  static const String user = 'user';
  static const String loggedIn = 'logged_in';

  static final storage = GetStorage();

  static initStorage() async {
    await GetStorage.init();
  }

  static saveToken(String value) {
    storage.write(authorizationToken, "${Constants.bearer} $value");
  }

  static String getToken() {
    return storage.read(authorizationToken);
  }

  static saveIsLoggedIn(bool value) {
    storage.write(loggedIn, value);
  }

  static bool isLoggedIn() {
    return storage.hasData(loggedIn) ? storage.read(loggedIn) : false;
  }
}