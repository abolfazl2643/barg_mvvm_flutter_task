import 'package:flutter/material.dart';

import '../../../utils/ui_utils/constants.dart';
import '../../../view_model/user_profile_controller.dart';
import '../../themes/theme.dart';

class UserCard extends StatelessWidget {
  final int index;
  const UserCard({
    Key? key,
    required this.profileController,
    required this.index,
  }) : super(key: key);

  final ProfileController profileController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(cardInnerPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    profileController.profiles[index].picture ??
                        defaultProfilePhotoURL,
                  ),
                ),
                const SizedBox(width: cardInnerPadding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(profileController.profiles[index].name),
                    const SizedBox(height: cardInnerPadding),
                    Text(profileController.profiles[index].email),
                  ],
                )
              ],
            ),
            const SizedBox(height: cardInnerPadding),
            Text(profileController.profiles[index].address),
          ],
        ),
      ),
    );
  }
}
