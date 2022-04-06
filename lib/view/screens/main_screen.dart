import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/ui_utils/constants.dart';
import '../../view_model/user_profile_controller.dart';
import '../themes/theme.dart';
import '../widgets/main_appbar.dart';
import '../widgets/skeleton_loading.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ProfileController profileController = Get.find();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    profileController.getCurrentUserProfile();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Get.width, appbarHeight),
        child: MainAppBar(profileController: profileController),
      ),
      body: FutureBuilder(
        future: profileController.getUserProfiles(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: profileController.profiles.length,
              itemBuilder: (context, index) {
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
              },
            );
          } else {
            return const SkeletonLoading();
          }
        },
      ),
    );
  }
}
