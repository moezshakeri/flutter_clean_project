import 'package:clean_project/base/base.dart';
import 'package:clean_project/screens/login/login_screen_vm.dart';
import 'package:flutter/material.dart';

class LoginScreen extends BaseView<LoginScreenViewModel> {
  LoginScreen({
    Key? key,
    String? redirectPath,
  })  : _redirectPath = redirectPath,
        super(key: key);

  final String? _redirectPath;

  static const _title = 'Login screen';
  static const _spacerHeight = 10.0;
  static const _loginText = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(_title),
              _buildSpacer(),
              _buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSpacer() {
    return const SizedBox(
      height: _spacerHeight,
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      child: const Text(
        _loginText,
      ),
      onPressed: () {
        viewModel.login(
          redirectPath: _redirectPath,
        );
      },
    );
  }
}
