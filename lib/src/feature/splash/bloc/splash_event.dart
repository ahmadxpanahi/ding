import 'package:equatable/equatable.dart';

abstract class SplashEvent extends Equatable {}

class LoginEvent extends SplashEvent {
  bool isLogin = false;
  LoginEvent(this.isLogin);
  @override
  List<Object?> get props => [isLogin];
}
