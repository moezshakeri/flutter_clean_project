import 'package:clean_project/base/base.dart';
import 'package:clean_project/screens/message/message_screen_m.dart';
import 'package:injectable/injectable.dart';

@injectable
class MessageScreenViewModel extends BaseViewModel<MessageScreenState> {
  MessageScreenViewModel() : super(const Initializing());

  void loadMessage(String msg) {
    emit(Initialized(msg: msg));
  }
}
