import 'package:auto_route/auto_route.dart';
import 'package:clean_project/screens/screens.dart';
import 'package:clean_project/services/services.dart';
import 'package:clean_project/setup.dart';

export 'router.gr.dart';

abstract class Routes {
  static const message = '/message/:message';
  static const login = '/login';
}

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      guards: [AuthenticatedUser],
      initial: true,
    ),
    AutoRoute(
      page: MessageScreen,
      guards: [AuthenticatedUser],
      path: Routes.message,
    ),
    AutoRoute(
      page: LoginScreen,
      path: Routes.login,
    ),
    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class $AppRouter {}

class AuthenticatedUser extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authService = locateService<IAuthService>();
    if (authService.isLoggedIn) {
      resolver.next();
    } else {
      router.push(
        LoginRoute(redirectPath: resolver.route.stringMatch),
      );
    }
  }
}
