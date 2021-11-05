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
  @Injectable(as: Key)
  UniqueKey get key;
}
