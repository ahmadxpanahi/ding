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

class SetOTP extends LoginEvent{
  final String? phoneNumber;

  SetOTP({this.phoneNumber});

  @override
  List<Object?> get props => [phoneNumber];
}

class SendTwoFactorCode extends LoginEvent{
  int userId;

SendTwoFactorCode(this.userId);

 @override
  List<Object?> get props => [userId];
}

class LoginWithOTP extends LoginEvent{
  String otp;
  String phoneNumber;

LoginWithOTP(this.otp, this.phoneNumber);

 @override
  List<Object?> get props => [otp, phoneNumber];
}

class AuthenticateByOTP extends LoginEvent{

 @override
  List<Object?> get props => [];

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
