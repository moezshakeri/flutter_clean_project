abstract class IAuthService {
  bool get isLoggedIn;
  void login();
  void logout();
}

class AuthService implements IAuthService {
  AuthService() {
    _isLoggedIn = false;
  }

  late bool _isLoggedIn;

  @override
  bool get isLoggedIn => _isLoggedIn;

  @override
  void login() {
    _isLoggedIn = true;
  }

  @override
  void logout() {
    _isLoggedIn = false;
  }
}
