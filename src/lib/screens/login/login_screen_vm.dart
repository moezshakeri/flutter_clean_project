import 'package:clean_project/base/base.dart';
import 'package:clean_project/screens/login/login_screen_m.dart';
import 'package:clean_project/services/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginScreenViewModel extends BaseViewModel<LoginScreenState> {
  LoginScreenViewModel({
    required IAuthService authService,
    required INavigationService navigationService,
  })  : _authService = authService,
        _navigationService = navigationService,
        super(const Initialized());

  final IAuthService _authService;
  final INavigationService _navigationService;

  void login({String? redirectPath}) {
    _authService.login();

    redirectPath != null
        ? _navigationService.replaceNamed(path: redirectPath)
        : _navigationService.replace(route: HomeRoute());
  }
}
