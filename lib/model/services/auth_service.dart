import 'package:barg_mvvm_task/model/data/identity_info.dart';
import 'package:barg_mvvm_task/model/interfaces/base_auth_service.dart';

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
