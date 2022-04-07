import 'package:get/get.dart';

import '../model/entities/responses/login_failed_response.dart';
import '../model/services/auth_service.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;
  var authService = AuthService();

  void login(String username, String password) {
    var loginResult = authService.login(username: username, password: password);

    if (loginResult == true) {
      isLoggedIn.value = loginResult;
      Get.toNamed('/main-screen');
      return;
    }
    var response = const LoginFailedResponse(
      message: 'Please enter the correct username and password!',
      title: 'Login failed',
    );
    Get.snackbar(response.title, response.message);
  }
}
