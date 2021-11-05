import 'package:clean_project/base/base.dart';
import 'package:clean_project/screens/home/home_screen_m.dart';
import 'package:clean_project/services/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeScreenViewModel extends BaseViewModel<HomeScreenState> {
  HomeScreenViewModel({
    required INavigationService navigationService,
  })  : _navigationService = navigationService,
        super(const Initialized());

  final INavigationService _navigationService;

  void gotoMessageScreen({required String message}) {
    _navigationService.navigateTo(
      route: MessageRoute(message: message),
    );
  }
}
