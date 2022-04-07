import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/entities/profile.dart';
import '../model/repositories/user_repository.dart';

class ProfileController extends GetxController {
  final profiles = [].obs;
  final currentUser = Rx<Profile?>(null);
  final selectedProfile = Rx<Profile?>(null);
  final userRepository = UserRepository();

  setUserProfiles() async {
    profiles.value = await userRepository.getAll();
    return List<Profile>.from(profiles);
  }

  setCurrentUserProfile() async {
    currentUser.value = await userRepository.getCurrentUser();
  }

  setSelectedProfile(String guid) async {
    selectedProfile.value = await userRepository.getProfileByGuid(guid, () {
      Get.defaultDialog(content: const Text('Profile is unavailable'));
      return currentUser.value!;
    });
  }
}
