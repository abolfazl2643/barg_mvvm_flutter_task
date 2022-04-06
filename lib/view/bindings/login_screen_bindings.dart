import 'package:get/get.dart';

import '../../view_model/auth_controller.dart';

class LoginScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}
