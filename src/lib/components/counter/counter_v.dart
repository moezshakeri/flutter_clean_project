import 'package:clean_project/base/base.dart';
import 'package:clean_project/components/counter/counter_vm.dart';
import 'package:clean_project/components/counter/counter_m.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class Counter extends BaseView<CounterViewModel> {
  Counter({Key? key}) : super(key: key);

  static const _title = 'This is counter component.';
  static const _increaseText = '+';
  static const _decreaseText = '-';
  static const _spacerHeight = 10.0;
  static const _componentPadding = 16.0;
  static const _componentBorderRadius = 8.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: viewModel,
      builder: (_, state) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(_componentPadding),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: const BorderRadius.all(
                Radius.circular(_componentBorderRadius),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(_title),
                _buildSpacer(),
                Text('Number is : ${(state as Initialized).num}'),
                _buildSpacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        _increaseText,
                      ),
                      onPressed: () {
                        viewModel.increase();
                      },
                    ),
                    _buildVerticalSpacer(),
                    ElevatedButton(
                      child: const Text(
                        _decreaseText,
                      ),
                      onPressed: () {
                        viewModel.decrease();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSpacer() {
    return const SizedBox(
      height: _spacerHeight,
    );
  }

  Widget _buildVerticalSpacer() {
    return const SizedBox(
      width: _spacerHeight,
    );
  }
}
