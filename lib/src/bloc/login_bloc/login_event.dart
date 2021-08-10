import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable{}

class LoginWithEmail extends LoginEvent{
  final String? tenancyName;
  final String? userName;
  final String? password;

  LoginWithEmail(this.userName,this.password,this.tenancyName);

  @override
  List<Object?> get props => [tenancyName, userName, password];
}

class LoginWithPhoneNumber extends LoginEvent{
  final String? tenancyName;

  LoginWithPhoneNumber({this.tenancyName});

  @override
  List<Object?> get props => [tenancyName];

}

class ShowLoginLoading extends LoginEvent{
  @override
  List<Object?> get props => [];
}

class ShowLoginError extends LoginEvent{
  final String message;

  ShowLoginError(this.message);

  @override
  List<Object?> get props => [];
}
