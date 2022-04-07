import 'dart:convert';
import 'package:flutter/services.dart';

import '../entities/profile.dart';
import '../interfaces/base_repository.dart';

class UserRepository implements BaseRepository {
  List<Profile> users = [];

  @override
  Future<List<Profile>> getAll() async {
    await Future.delayed(const Duration(seconds: 2));
    var decodedData = await getDecodedData();
    var usersList = List.from(decodedData);
    return usersList.map((profile) => Profile.fromJson(profile)).toList();
  }

  @override
  Future<Profile> getCurrentUser() async {
    var decodedData = await getDecodedData();
    await Future.delayed(const Duration(seconds: 1));
    return Profile.fromJson(decodedData[0]);
  }

  Future<dynamic> getDecodedData() async {
    var fileLocation = 'lib/model/data/user_profile.json';
    final response = await rootBundle.loadString(fileLocation);
    return jsonDecode(response);
  }

  getProfileByGuid(String guid, Profile Function() orElse) async {
    var decodedData = await getDecodedData();
    var usersList = List.from(decodedData)
        .map((profile) => Profile.fromJson(profile))
        .toList();
    return usersList.singleWhere((element) => element.guid == guid,
        orElse: orElse);
  }
}
