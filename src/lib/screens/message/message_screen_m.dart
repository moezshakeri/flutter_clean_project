import 'package:clean_project/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_screen_m.freezed.dart';

@freezed
class MessageScreenState extends BaseState with _$MessageScreenState {
  const factory MessageScreenState.initializing() = Initializing;

  const factory MessageScreenState.initialized({required String msg}) =
      Initialized;
}
