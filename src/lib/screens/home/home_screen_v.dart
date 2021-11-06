import 'package:clean_project/base/base.dart';
import 'package:clean_project/components/components.dart';
import 'package:clean_project/screens/home/home_screen_vm.dart';
import 'package:flutter/material.dart';

class HomeScreen extends BaseView<HomeScreenViewModel> {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  static const _title = 'Home screen';
  static const _spacerHeight = 10.0;
  static const _sampleMessage = 'Hello world !';
  static const _showMessageText = 'show message "$_sampleMessage"';
  static const _logoutText = 'logout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
        actions: [
          IconButton(
            onPressed: () {
              viewModel.logout();
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(_title),
              _buildSpacer(),
              Counter(),
              _buildSpacer(),
              _buildGotoMessageButton(),
              _buildSpacer(),
              _buildLogoutButton(),
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

  Widget _buildGotoMessageButton() {
    return ElevatedButton(
      child: const Text(
        _showMessageText,
      ),
      onPressed: () {
        viewModel.gotoMessageScreen(
          message: _sampleMessage,
        );
      },
    );
  }

  Widget _buildLogoutButton() {
    return ElevatedButton(
      child: const Text(
        _logoutText,
      ),
      onPressed: () {
        viewModel.logout();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.red,
        ),
      ),
    );
  }
}
