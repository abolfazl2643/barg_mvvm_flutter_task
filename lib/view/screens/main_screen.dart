import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_model/user_profile_controller.dart';
import '../themes/theme.dart';
import '../widgets/main_screen_widgets/main_appbar.dart';
import '../widgets/main_screen_widgets/skeleton_loading.dart';
import '../widgets/main_screen_widgets/user_card.dart';

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
    profileController.setCurrentUserProfile();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Get.width, appbarHeight),
        child: ProfileAppBar(profileController: profileController),
      ),
      body: FutureBuilder(
        future: profileController.setUserProfiles(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: profileController.profiles.length,
              itemBuilder: (context, index) {
                return UserCard(
                  profileController: profileController,
                  index: index,
                );
              },
            );
          }
          return const SkeletonLoading();
        },
      ),
    );
  }
}
