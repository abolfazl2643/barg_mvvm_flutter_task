import 'package:barg_mvvm_task/model/entities/profile.dart';
import 'package:get/get.dart';

import '../model/repositories/user_repository.dart';

class ProfileController extends GetxController {
  final profiles = [].obs;
  final currentUser = Rx<Profile?>(null);
  final userRepository = UserRepository();

  Future<List> getUserProfiles() async =>
      profiles.value = await userRepository.getAll();

  getCurrentUserProfile() async =>
      currentUser.value = await userRepository.getCurrentUser();
}
