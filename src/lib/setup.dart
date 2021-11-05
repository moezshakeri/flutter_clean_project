import 'package:clean_project/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:clean_project/setup.config.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async => $initGetIt(getIt);

T locateService<T extends Object>() => getIt.get<T>();

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
@module
abstract class RegisterModule {
  static final _appRouter = AppRouter();
  final _navigationService = NavigationService(_appRouter.navigatorKey);

  @Injectable(as: Key)
  UniqueKey get key;

  @singleton
  AppRouter get appRouter => _appRouter;

  @singleton
  INavigationService get navigationService => _navigationService;

  @singleton
  IAuthService get authService => AuthService();
}
