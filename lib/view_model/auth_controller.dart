import 'package:barg_mvvm_task/model/services/auth_service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;
  var authService = AuthService();

  void login(String username, String password) {
    var loginResult = authService.login(username: username, password: password);

    if (loginResult == true) {
      isLoggedIn.value = loginResult;
      Get.toNamed('/');
    } else {
      Get.snackbar('', 'Please enter the correct username and password!');
    }
  }
}
