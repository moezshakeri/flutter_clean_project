import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseViewModel<T> extends Cubit<T> {
  BaseViewModel(T state) : super(state);
}
