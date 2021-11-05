import 'package:auto_route/annotations.dart';
import 'package:clean_project/base/base.dart';
import 'package:clean_project/screens/message/message_screen_m.dart';
import 'package:clean_project/screens/message/message_screen_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageScreen extends BaseView<MessageScreenViewModel> {
  MessageScreen({
    @PathParam('message') required String message,
    Key? key,
  })  : _message = message,
        super(key: key);

  final String _message;
  static const _title = 'Message Screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageScreenViewModel, MessageScreenState>(
      bloc: viewModel..loadMessage(_message),
      builder: (_, state) {
        if (state is Initialized) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(_title),
            ),
            body: Center(
              child: Text(
                '$_title, Message is $_message',
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
