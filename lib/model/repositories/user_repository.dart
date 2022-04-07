import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/profile.dart';
import '../interfaces/base_repository.dart';

class UserRepository implements BaseRepository {
  @override
  Future<List<Profile>> getAll() async {
    await Future.delayed(const Duration(seconds: 2));
    var decodedData = await getDecodedData();
    var usersList = List.from(decodedData);
    return usersList.map((profile) => Profile.fromJson(profile)).toList();
  }

  Future<Profile> getCurrentUser() async {
    var decodedData = await getDecodedData();
    await Future.delayed(const Duration(seconds: 1));
    return Profile.fromJson(decodedData[0]);
  }

  Future<Profile?> getProfileByGuid(String guid) async {
    var decodedData = await getDecodedData();
    return List.from(decodedData)
        .map((profile) => Profile.fromJson(profile))
        .firstWhereOrNull((element) => element.guid == guid);
  }

  Future<dynamic> getDecodedData() async {
    var fileLocation = 'lib/model/data/user_profile.json';
    final response = await rootBundle.loadString(fileLocation);
    return jsonDecode(response);
  }
}
