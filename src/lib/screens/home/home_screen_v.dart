import 'package:clean_project/base/base.dart';
import 'package:clean_project/screens/home/home_screen_vm.dart';
import 'package:flutter/material.dart';

class HomeScreen extends BaseView<HomeScreenViewModel> {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  static const _title = 'This is home screen !';
  static const _spacerHeight = 10.0;
  static const _sampleMessage = 'Hello world !';
  static const _buttonTitle = 'show message "$_sampleMessage"';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(_title),
              const SizedBox(
                height: _spacerHeight,
              ),
              ElevatedButton(
                child: const Text(
                  _buttonTitle,
                ),
                onPressed: () {
                  viewModel.gotoMessageScreen(
                    message: _sampleMessage,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
