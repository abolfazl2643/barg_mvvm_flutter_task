import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/ui_utils/constants.dart';
import '../../../view_model/user_profile_controller.dart';
import '../../themes/theme.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
    required this.profileController,
  }) : super(key: key);

  final ProfileController profileController;

  @override
  Widget build(BuildContext context) {
    return GetX<ProfileController>(
      init: ProfileController(),
      builder: (_) {
        return AppBar(
          title: Text(profileController.currentUser.value?.name ?? 'Guest'),
          leading: Padding(
            padding: const EdgeInsets.all(appbarCircleAvatarPadding),
            child: GestureDetector(
              onTap: () {
                var currentUserGuid = profileController.currentUser.value!.guid;
                profileController.setSelectedProfile(currentUserGuid);
                Get.toNamed('/profile-screen');
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  profileController.currentUser.value?.picture ??
                      defaultProfilePhotoURL,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
