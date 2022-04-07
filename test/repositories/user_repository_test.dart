import 'package:barg_mvvm_task/model/entities/profile.dart';
import 'package:barg_mvvm_task/model/repositories/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test(
    'confirms that reslut is not empty',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository.getAll();
      expect(result.isNotEmpty, isTrue);
    },
  );

  test(
    'confirms that it returns a list of Profiels',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository.getAll();
      expect(result.runtimeType, equals(List<Profile>));
    },
  );

  test(
    'first users name should be Abolfazl Rezaei',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository.getAll();
      expect(result[0].name, equals('Abolfazl Rezaei'));
    },
  );

  test(
    'current users name should be Abolfazl Rezaei',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository.getCurrentUser();
      expect(result.name, equals('Abolfazl Rezaei'));
    },
  );

  test(
    'confirms that the function returns an object of type Profile',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository.getCurrentUser();
      expect(result, isA<Profile>());
    },
  );

  test(
    'confirms that the function returns an object of type Profile',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository
          .getProfileByGuid('1791c941-9939-4970-be9a-09739587d69b');
      expect(result, isA<Profile>());
    },
  );

  test(
    'confirms that the function returns Current user name',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository
          .getProfileByGuid('1791c941-9939-4970-be9a-09739587d69b');
      expect(result!.name, equals('Abolfazl Rezaei'));
    },
  );

  test(
    'confirms that the function returns null if guid is wrong',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository
          .getProfileByGuid('qqqqqqqqqqqqqqqqqqqqq-qqqqqqqqqqqqq');
      expect(result, isNull);
    },
  );

  test(
    'confirms that the function returns null if guid is wrong',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository
          .getProfileByGuid('qqqqqqqqqqqqqqqqqqqqq-qqqqqqqqqqqqq');
      expect(result, isNull);
    },
  );

  test(
    'test data loading from json file - IS EMPTY OR NOT',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository.getDecodedData();
      expect(result, isNotEmpty);
    },
  );

  test(
    'test data loading from json file - NULL CHECK',
    () async {
      var userRepository = UserRepository();
      var result = await userRepository.getDecodedData();
      expect(result, isNotNull);
    },
  );
}
