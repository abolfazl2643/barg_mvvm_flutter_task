import 'package:barg_mvvm_task/view_model/auth_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  test(
    'should return true if username and password is correct',
    () {
      var controller = Get.put(AuthController());
      controller.login('1111', '1111');
      expect(controller.isLoggedIn.value, equals(true));
    },
  );

  test(
    'should return false if username and password is incorrect',
    () {
      var controller = Get.put(AuthController());
      controller.login('2222', '2222');
      expect(controller.isLoggedIn.value, equals(false));
    },
  );
}
