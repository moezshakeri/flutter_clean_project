import 'package:clean_project/app.dart';
import 'package:clean_project/setup.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(locateService<App>());
}
