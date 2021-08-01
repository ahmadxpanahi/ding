import 'package:equatable/equatable.dart';

abstract class RequestsState extends Equatable {}

class RequestsInitialState extends RequestsState {
  @override
  List<Object?> get props => [];
}

class GetMyRequestsDataSuccess extends RequestsState{
  @override
  List<Object?> get props =>[];

}

class RequestsLoadingState extends RequestsState {
  bool isLoading;
  RequestsLoadingState(this.isLoading);
  @override
  List<Object?> get props => [this.isLoading];
}

class RequestsErrorState extends RequestsState {
  String message;
  RequestsErrorState(this.message);
  @override
  List<Object?> get props => [this.message];
}
