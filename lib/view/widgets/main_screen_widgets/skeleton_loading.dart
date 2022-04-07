import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../themes/theme.dart';

class SkeletonLoading extends StatelessWidget {
  const SkeletonLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      duration: const Duration(seconds: 3),
      interval: const Duration(seconds: 1),
      color: Colors.black,
      colorOpacity: 0,
      enabled: true,
      direction: const ShimmerDirection.fromLTRB(),
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(cardInnerPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(width: cardInnerPadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 200,
                            color: Colors.grey,
                          ),
                          const SizedBox(height: cardInnerPadding),
                          Container(
                            height: 20,
                            width: 200,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: cardInnerPadding),
                  Container(
                    height: 20,
                    width: 300,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
