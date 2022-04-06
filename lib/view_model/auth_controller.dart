import 'package:barg_mvvm_task/model/entities/responses/login_failed_response.dart';
import 'package:get/get.dart';

import '../model/services/auth_service.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;
  var authService = AuthService();

  void login(String username, String password) {
    var loginResult = authService.login(username: username, password: password);

    if (loginResult == true) {
      isLoggedIn.value = loginResult;
      Get.toNamed('/');
      return;
    }
    const response = LoginFailedResponse(
      message: 'Please enter the correct username and password!',
      title: 'Login failed',
    );
    Get.snackbar(response.title, response.message);
  }
}
