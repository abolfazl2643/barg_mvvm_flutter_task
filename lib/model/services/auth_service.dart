import '../data/identity_info.dart';
import '../interfaces/base_auth_service.dart';

class AuthService implements BaseAuthService {
  @override
  bool signIn({required String username, required String password}) {
    if (username == storedIdentityInfo.username &&
        password == storedIdentityInfo.password) {
      return true;
    }
    return false;
  }
}
