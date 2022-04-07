import 'package:get/get.dart';

import '../../model/entities/responses/login_failed_response.dart';

showLoginFailedDialog() {
  var response = const LoginFailedResponse(
    message: 'Please enter the correct username and password!',
    title: 'Login failed',
  );
  Get.snackbar(response.title, response.message);
}
