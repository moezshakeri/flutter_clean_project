import 'package:clean_project/base/base.dart';
import 'package:clean_project/components/counter/counter_m.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterViewModel extends BaseViewModel<CounterState> {
  CounterViewModel() : super(const Initialized(num: 0));

  void increase() {
    emit(Initialized(num: state.num + 1));
  }

  void decrease() {
    emit(Initialized(num: state.num - 1));
  }
}
