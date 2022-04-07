import 'package:barg_mvvm_task/view/widgets/main_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/ui_utils/constants.dart';
import '../../view_model/user_profile_controller.dart';
import '../themes/theme.dart';

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
          child: MainAppBar(profileController: profileController),
        ),
        body: GetX<ProfileController>(
            init: ProfileController(),
            initState: (_) {},
            builder: (_) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      color: const Color.fromARGB(255, 241, 181, 251),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(
                          color: Color.fromARGB(255, 161, 110, 170),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text('Balance:'),
                                const SizedBox(width: cardInnerPadding),
                                Text(profileController
                                        .selectedProfile.value?.balance ??
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
                                      Text(profileController
                                              .selectedProfile.value?.age
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
                                    profileController
                                            .selectedProfile.value?.about ??
                                        emptyAboutMessage,
                                    overflow: profileController.selectedProfile
                                                .value!.isOwner ==
                                            true
                                        ? TextOverflow.ellipsis
                                        : TextOverflow.visible,
                                    maxLines: 2,
                                  ),
                                ),
                                profileController
                                            .selectedProfile.value!.isOwner ==
                                        true
                                    ? TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Edit',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.green,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(100, 50)),
                                            side:
                                                BorderSide(color: Colors.blue),
                                          ),
                                        ),
                                      )
                                    : Container()
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Friends:'),
                        SizedBox(
                          height: 60,
                          width: Get.width,
                          child: ListView.builder(
                            itemCount: profileController
                                .selectedProfile.value!.friends.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 50,
                                  width: 100,
                                  child: TextButton(
                                    onPressed: () {
                                      profileController.setSelectedProfile(
                                          profileController.selectedProfile
                                              .value!.friends[index].guid);
                                    },
                                    child: Text(
                                      profileController.selectedProfile.value!
                                          .friends[index].name,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(100, 50)),
                                        side: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('greeting'),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Card(
                              color: Colors.blue,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                side: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Text(
                                    profileController
                                        .selectedProfile.value!.greeting,
                                    style: const TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }));
  }
}
