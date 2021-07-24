import 'package:ding/src/feature/splash/bloc/splash_event.dart';
import 'package:ding/src/feature/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitialState());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is LoginEvent) {
      yield LoginState(event.isLogin);
    }
  }
}
