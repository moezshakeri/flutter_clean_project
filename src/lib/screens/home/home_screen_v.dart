import 'package:clean_project/base/base.dart';
import 'package:clean_project/screens/home/home_screen_vm.dart';
import 'package:flutter/material.dart';

class HomeScreen extends BaseView<HomeScreenViewModel> {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  static const _title = 'This is home screen !';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(_title),
        ),
      ),
    );
  }
}
