import 'package:auto_route/auto_route.dart';
import 'package:clean_project/screens/screens.dart';

export 'router.gr.dart';

abstract class Routes {
  static const message = '/message/:id';
}

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      initial: true,
    ),
    AutoRoute(
      page: MessageScreen,
      path: Routes.message,
    ),
    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class $AppRouter {}
