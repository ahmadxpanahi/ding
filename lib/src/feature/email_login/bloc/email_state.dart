import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

abstract class EmailState extends Equatable {}

class EmailInitialState extends EmailState {
  @override
  List<Object?> get props => [];
}

class LoginWithEmailSuccessful extends EmailState {
  AuthenticateResultModel? response;
  LoginWithEmailSuccessful(this.response);
  @override
  List<Object?> get props => [response];
}

class LoginLoading extends EmailState {
  bool loading;
  LoginLoading({this.loading = false});
  @override
  List<Object?> get props => [loading];
}

class LoginError extends EmailState {
  String? message;
  LoginError({this.message});
  @override
  List<Object?> get props => [message];
}
