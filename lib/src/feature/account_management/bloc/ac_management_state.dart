import 'package:equatable/equatable.dart';

abstract class AccountManagementState extends Equatable{}

class AcManagementInitialState extends AccountManagementState{
  @override
  List<Object?> get props => [];

}

class AcManagementLoadingState extends AccountManagementState{
  bool isLoading;
  AcManagementLoadingState(this.isLoading);
  @override
  List<Object?> get props => [isLoading];

}

class AcManagementErrorState extends AccountManagementState{
  String message;
  AcManagementErrorState(this.message);
  @override
  List<Object?> get props => [message];

}