import 'package:clean_project/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_m.freezed.dart';

@freezed
class CounterState extends BaseState with _$CounterState {
  const factory CounterState.initialized({required int num}) = Initialized;
}
