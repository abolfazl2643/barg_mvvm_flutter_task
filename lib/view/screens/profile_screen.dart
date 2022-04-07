import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_model/user_profile_controller.dart';
import '../themes/theme.dart';
import '../widgets/main_screen_widgets/main_appbar.dart';
import '../widgets/profile_screen_widgets/freinds_list_section.dart';
import '../widgets/profile_screen_widgets/greeting_card.dart';
import '../widgets/profile_screen_widgets/user_info_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController profileController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Get.width, appbarHeight),
        child: ProfileAppBar(profileController: profileController),
      ),
      body: Column(
        children: [
          UserInfoCard(profileController: profileController),
          FreindsSection(profileController: profileController),
          GreetingCard(profileController: profileController),
        ],
      ),
    );
  }
}
