import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

abstract class RequestsState extends Equatable {}

class RequestsInitialState extends RequestsState {
  @override
  List<Object?> get props => [];
}

class GetRequestsDataSuccess extends RequestsState{
  bool? cartable;
  List<GetRequestForViewDto> requestItems;
  List<GetEnterLeaveForViewDto> enterLeaveItems;
  GetRequestsDataSuccess(this.requestItems, this.enterLeaveItems,this.cartable);
  @override
  List<Object?> get props =>[requestItems, enterLeaveItems,cartable];

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

