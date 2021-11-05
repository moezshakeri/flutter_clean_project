import 'package:clean_project/base/base.dart';
import 'package:clean_project/screens/home/home_screen_m.dart';
import 'package:clean_project/services/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeScreenViewModel extends BaseViewModel<HomeScreenState> {
  HomeScreenViewModel({
    required INavigationService navigationService,
    required IAuthService authService,
  })  : _navigationService = navigationService,
        _authService = authService,
        super(const Initialized());

  final INavigationService _navigationService;
  final IAuthService _authService;

  void gotoMessageScreen({required String message}) {
    _navigationService.navigateTo(
      route: MessageRoute(message: message),
    );
  }

  void logout() {
    _authService.logout();
    _navigationService.replace(route: HomeRoute());
  }
}
