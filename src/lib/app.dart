import 'package:clean_project/services/router.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class App extends StatelessWidget {
  const App({
    required AppRouter appRouter,
    Key? key,
  })  : _appRouter = appRouter,
        super(key: key);

  final AppRouter _appRouter;
  static const _appTitle = 'Welcome to clean flutter app';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: _appTitle,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
