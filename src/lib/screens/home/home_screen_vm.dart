import 'package:clean_project/base/base.dart';
import 'package:clean_project/screens/home/home_screen_m.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeScreenViewModel extends BaseViewModel<HomeScreenState> {
  HomeScreenViewModel() : super(const Initialized());
}
