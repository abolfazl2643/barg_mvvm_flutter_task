import 'package:get/get.dart';

import '../../view_model/user_profile_controller.dart';

class ProfileScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ProfileController>(ProfileController());
  }
}
