import 'package:flutter/material.dart';
import 'package:clean_project/base/base_viewmodel.dart';
import 'package:clean_project/setup.dart';

abstract class BaseView<T extends BaseViewModel> extends StatelessWidget {
  BaseView({Key? key}) : super(key: key) {
    _viewModel = locateService<T>();
  }

  late final T _viewModel;

  T get viewModel => _viewModel;
}
