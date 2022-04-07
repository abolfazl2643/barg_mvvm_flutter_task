import 'package:barg_mvvm_task/view/themes/theme.dart';
import 'package:flutter/material.dart';

import '../../../view_model/user_profile_controller.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({
    Key? key,
    required this.profileController,
  }) : super(key: key);

  final ProfileController profileController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: greetingSectionPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('greeting'),
          Padding(
            padding: greetingCardPadding,
            child: Card(
              color: greetingCardColor,
              shape: greetingCardShape,
              child: Center(
                child: Padding(
                  padding: greetingCardPadding,
                  child: Text(
                    profileController.selectedProfile.value!.greeting,
                    style: greetingTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
