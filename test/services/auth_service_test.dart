import 'package:flutter_test/flutter_test.dart';
import 'package:barg_mvvm_task/model/services/auth_service.dart';

void main() {
  group('Auth Service', () {
    test('should return true if username and password is correct', () {
      var authService = AuthService();
      var result = authService.signIn(password: '1111', username: '1111');
      expect(result, equals(true));
    });

    test('should return false if username and password is incorrect', () {
      var authService = AuthService();
      var result = authService.signIn(password: '2222', username: '2222');
      expect(result, equals(false));
    });
  });
}
