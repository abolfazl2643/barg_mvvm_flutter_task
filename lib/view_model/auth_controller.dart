import 'package:get/get.dart';

import '../model/services/auth_service.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;
  var authService = AuthService();

  login(String username, String password) {
    isLoggedIn.value =
        authService.signIn(username: username, password: password);
  }
}
