import 'package:equatable/equatable.dart';

abstract class RequestsEvent extends Equatable {}

class ShowRequestsLoading extends RequestsEvent {
  bool isLoading;
  ShowRequestsLoading(this.isLoading);
  @override
  List<Object?> get props => [isLoading];
}

class ShowRequestsError extends RequestsEvent {
  String message;
  ShowRequestsError(this.message);
  @override
  List<Object?> get props => [this.message];
}

class GetMyRequestsData extends RequestsEvent{

  @override
  List<Object?> get props => [];

}

class GetCartableData extends RequestsEvent {
  GetCartableData();
  @override
  List<Object?> get props => [];
}
