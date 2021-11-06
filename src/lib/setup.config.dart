// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app.dart' as _i3;
import 'components/counter/counter_v.dart' as _i7;
import 'components/counter/counter_vm.dart' as _i8;
import 'screens/home/home_screen_vm.dart' as _i11;
import 'screens/login/login_screen_vm.dart' as _i9;
import 'screens/message/message_screen_vm.dart' as _i10;
import 'services/router.dart' as _i4;
import 'services/services.dart' as _i6;
import 'setup.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.App>(
      () => _i3.App(appRouter: get<_i4.AppRouter>(), key: get<_i5.Key>()));
  gh.singleton<_i6.AppRouter>(registerModule.appRouter);
  gh.factory<_i7.Counter>(() => _i7.Counter(key: get<_i5.Key>()));
  gh.factory<_i8.CounterViewModel>(() => _i8.CounterViewModel());
  gh.singleton<_i6.IAuthService>(registerModule.authService);
  gh.singleton<_i6.INavigationService>(registerModule.navigationService);
  gh.factory<_i5.Key>(() => registerModule.key);
  gh.factory<_i9.LoginScreenViewModel>(() => _i9.LoginScreenViewModel(
      authService: get<_i6.IAuthService>(),
      navigationService: get<_i6.INavigationService>()));
  gh.factory<_i10.MessageScreenViewModel>(() => _i10.MessageScreenViewModel());
  gh.factory<_i11.HomeScreenViewModel>(() => _i11.HomeScreenViewModel(
      navigationService: get<_i6.INavigationService>(),
      authService: get<_i6.IAuthService>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {
  @override
  _i5.UniqueKey get key => _i5.UniqueKey();
}
