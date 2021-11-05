import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract class INavigationService {
  GlobalKey<NavigatorState> get navigatorKey;

  Future<void> navigateTo({required PageRouteInfo<dynamic> route});
  Future<void> navigateToRouteName({required String path});
  Future<void> replace({required PageRouteInfo<dynamic> route});
  Future<void> replaceNamed({required String path});
}

class NavigationService extends INavigationService {
  NavigationService(this._navigatorKey);

  final GlobalKey<NavigatorState> _navigatorKey;

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  Future<void> navigateTo({required PageRouteInfo route}) async {
    await AutoRouter.of(_navigatorKey.currentContext!).push(route);
  }

  @override
  Future<void> navigateToRouteName({required String path}) async {
    await AutoRouter.of(_navigatorKey.currentContext!).pushNamed(path);
  }

  @override
  Future<void> replace({required PageRouteInfo route}) async {
    await AutoRouter.of(_navigatorKey.currentContext!).replace(route);
  }

  @override
  Future<void> replaceNamed({required String path}) async {
    await AutoRouter.of(_navigatorKey.currentContext!).replaceNamed(path);
  }
}
