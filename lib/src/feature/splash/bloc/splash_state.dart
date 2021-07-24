import 'package:equatable/equatable.dart';

abstract class SplashState extends Equatable {}

class SplashInitialState extends SplashState {
  @override
  List<Object?> get props => [];
}

class LoginState extends SplashState {
  bool isLoading;
  LoginState(this.isLoading);
  @override
  List<Object?> get props => [isLoading];
}
