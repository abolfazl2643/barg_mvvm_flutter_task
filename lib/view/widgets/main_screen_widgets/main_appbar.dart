import 'package:barg_mvvm_task/view/routes/route_enum.dart';
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
      builder: (_) => AppBar(
        title: Text(profileController.currentUser.value?.name ?? 'Guest'),
        leading: Padding(
          padding: const EdgeInsets.all(appbarCircleAvatarPadding),
          child: GestureDetector(
            onTap: onImageTapHandler,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                profileController.currentUser.value?.picture ??
                    defaultProfilePhotoURL,
              ),
            ),
          ),
        ),
      ),
    );
  }

  onImageTapHandler() {
    var currentUserGuid = profileController.currentUser.value!.guid;
    profileController.setSelectedProfile(currentUserGuid);
    Get.toNamed(getRouteName(Screen.profile));
  }
}
