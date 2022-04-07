import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/ui_utils/constants.dart';
import '../../../view_model/user_profile_controller.dart';
import '../../themes/theme.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    Key? key,
    required this.profileController,
  }) : super(key: key);

  final ProfileController profileController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: userCardPadding,
      child: Card(
        color: userInfoCardColor,
        shape: userInfoCardShape,
        child: Padding(
          padding: userInfoCardInnerPadding,
          child: GetX<ProfileController>(
            init: ProfileController(),
            initState: (_) {},
            builder: (_) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Balance:'),
                      const SizedBox(width: cardInnerPadding),
                      Text(profileController.selectedProfile.value?.balance ??
                          emptyBalanceMessage),
                    ],
                  ),
                  const SizedBox(height: cardInnerPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text('age:'),
                            const SizedBox(width: cardInnerPadding),
                            Text(profileController.selectedProfile.value?.age
                                    .toString() ??
                                emptyAgeMessage),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text('registered:'),
                            const SizedBox(width: cardInnerPadding),
                            Text(
                                '${profileController.selectedProfile.value?.registered.substring(11, 17)} AM'),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: cardInnerPadding),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('about:'),
                      const SizedBox(width: cardInnerPadding),
                      Flexible(
                        child: Text(
                          profileController.selectedProfile.value?.about ??
                              emptyAboutMessage,
                          overflow: profileController
                                      .selectedProfile.value!.isOwner ==
                                  true
                              ? TextOverflow.ellipsis
                              : TextOverflow.visible,
                          maxLines: 2,
                        ),
                      ),
                      profileController.selectedProfile.value!.isOwner == true
                          ? TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Edit',
                                style: profileEditButtonTextColor,
                              ),
                              style: profileEditButtonStyle,
                            )
                          : Container()
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
