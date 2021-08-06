import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

abstract class RequestsState extends Equatable {}

class RequestsInitialState extends RequestsState {
  @override
  List<Object?> get props => [];
}

class GetMyRequestsDataSuccess extends RequestsState{
  List<GetRequestForViewDto> requestItems;
  List<GetEnterLeaveForViewDto> enterLeaveItems;
  GetMyRequestsDataSuccess(this.requestItems, this.enterLeaveItems);
  @override
  List<Object?> get props =>[requestItems, enterLeaveItems];

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

