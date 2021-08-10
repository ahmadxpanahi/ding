import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

abstract class LoginState extends Equatable{}

class LoginInitialState extends LoginState{
  @override
  List<Object?> get props => [];

}

class LoginWithEmailSuccessful extends LoginState{
  final AuthenticateResultModel? response;

  LoginWithEmailSuccessful(this.response);

  @override
  List<Object?> get props => [response];
}

class LoginWithPhoneNumberSuccessful extends LoginState{
  final AuthenticateResultModel? response;

  LoginWithPhoneNumberSuccessful(this.response);

  @override
  List<Object?> get props => [response];
}

class LoginLoadingState extends LoginState{
  final bool isLoading;
  LoginLoadingState(this.isLoading);
  @override
  List<Object?> get props => [isLoading];

}

class LoginErrorState extends LoginState{
  final String? message;
  LoginErrorState({this.message});
  @override
  List<Object?> get props => [message];

}
