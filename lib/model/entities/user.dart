import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required String guid,
    required bool isOwner,
    required String balance,
    required String picture,
    required double age,
    required String eyeColor,
    required String name,
    required String gender,
    required String company,
    required String email,
    required String phone,
    required String address,
    required String about,
    required String registered,
    required double latitude,
    required double longitude,
    required List tags,
    required List friends,
    required String greeting,
    required String favoriteFruit,
  }) = _User;
}
