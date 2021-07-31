import 'package:equatable/equatable.dart';

abstract class AccountManagementEvent extends Equatable {}

class GetAcManagementData extends AccountManagementEvent {
  @override
  List<Object?> get props => [];
}

class ShowAcManagementLoading extends AccountManagementEvent {
  bool isLoading;
  ShowAcManagementLoading(this.isLoading);
  @override
  List<Object?> get props => [isLoading];
}

class ShowAcManagementError extends AccountManagementEvent {
  String message;
  ShowAcManagementError(this.message);
  @override
  List<Object?> get props => [message];
}
