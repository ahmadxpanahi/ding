import 'package:equatable/equatable.dart';

abstract class EmailEvent extends Equatable {}

class LoginWithEmailEvent extends EmailEvent {
  String? tenancyName;
  String? userName;
  String? password;

  @override
  List<Object?> get props => [tenancyName, userName, password];
}

class ShowLoading extends EmailEvent {
  bool loading;
  ShowLoading({this.loading = false});
  @override
  List<Object?> get props => [loading];
}

class ShowError extends EmailEvent {
  String? message;
  ShowError({this.message});

  @override
  List<Object?> get props => [message];
}
