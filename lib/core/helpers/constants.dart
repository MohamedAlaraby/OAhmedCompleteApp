import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/helpers/shared_prefs_helper.dart';

class SharedPrefKeys {
  static const String userToken = "userToken";
}

bool isLoggedinUser = false;
Future<void> checkIfLoggedIn() async {
  debugPrint("checkIfLoggedIn $checkIfLoggedIn");
  String token =
      await SharedPrefsHelper.getSecuredString(SharedPrefKeys.userToken);
  if (token.isNotEmpty) {
    isLoggedinUser = true;
  } else {
    isLoggedinUser = false;
  }
}
