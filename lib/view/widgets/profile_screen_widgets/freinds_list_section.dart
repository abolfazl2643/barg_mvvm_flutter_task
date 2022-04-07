import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_model/user_profile_controller.dart';
import '../../themes/theme.dart';

class FreindsSection extends StatelessWidget {
  const FreindsSection({
    Key? key,
    required this.profileController,
  }) : super(key: key);

  final ProfileController profileController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: friendSectionPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Friends:'),
          SizedBox(
            height: 60,
            width: Get.width,
            child: GetX<ProfileController>(
              init: ProfileController(),
              initState: (_) {},
              builder: (_) {
                return ListView.builder(
                  itemCount:
                      profileController.selectedProfile.value!.friends.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: friendButtonPadding,
                      child: SizedBox(
                        height: 50,
                        width: 100,
                        child: TextButton(
                          onPressed: () {
                            profileController.setSelectedProfile(
                                profileController.selectedProfile.value!
                                    .friends[index].guid);
                          },
                          child: Text(
                            profileController
                                .selectedProfile.value!.friends[index].name,
                            style: friendButtonTextStyle,
                          ),
                          style: friendButtonStyle,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
