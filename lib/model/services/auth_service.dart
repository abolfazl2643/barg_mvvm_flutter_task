import '../data/identity_info.dart';
import '../interfaces/base_auth_service.dart';

class AuthService implements BaseAuthService {
  @override
  bool login({required String username, required String password}) {
    if (username == identityInfo.username &&
        password == identityInfo.password) {
      return true;
    }
    return false;
  }
}
