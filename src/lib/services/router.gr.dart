// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../screens/screens.dart' as _i1;
import 'router.dart' as _i4;

class AppRouter extends _i2.RootStackRouter {
  AppRouter(
      {_i3.GlobalKey<_i3.NavigatorState>? navigatorKey,
      required this.authenticatedUser})
      : super(navigatorKey);

  final _i4.AuthenticatedUser authenticatedUser;

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.HomeScreen(key: args.key));
    },
    MessageRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<MessageRouteArgs>(
          orElse: () =>
              MessageRouteArgs(message: pathParams.getString('message')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.MessageScreen(message: args.message, key: args.key));
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i1.LoginScreen(key: args.key, redirectPath: args.redirectPath));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', guards: [authenticatedUser]),
        _i2.RouteConfig(MessageRoute.name,
            path: '/message/:message', guards: [authenticatedUser]),
        _i2.RouteConfig(LoginRoute.name, path: '/login'),
        _i2.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for [_i1.HomeScreen]
class HomeRoute extends _i2.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i3.Key? key})
      : super(name, path: '/', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i3.Key? key;
}

/// generated route for [_i1.MessageScreen]
class MessageRoute extends _i2.PageRouteInfo<MessageRouteArgs> {
  MessageRoute({required String message, _i3.Key? key})
      : super(name,
            path: '/message/:message',
            args: MessageRouteArgs(message: message, key: key),
            rawPathParams: {'message': message});

  static const String name = 'MessageRoute';
}

class MessageRouteArgs {
  const MessageRouteArgs({required this.message, this.key});

  final String message;

  final _i3.Key? key;
}

/// generated route for [_i1.LoginScreen]
class LoginRoute extends _i2.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i3.Key? key, String? redirectPath})
      : super(name,
            path: '/login',
            args: LoginRouteArgs(key: key, redirectPath: redirectPath));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.redirectPath});

  final _i3.Key? key;

  final String? redirectPath;
}
