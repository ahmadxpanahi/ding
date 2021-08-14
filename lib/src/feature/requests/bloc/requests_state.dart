import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

abstract class RequestsState extends Equatable {}

class RequestsInitialState extends RequestsState {
  @override
  List<Object?> get props => [];
}

class GetRequestsDataSuccess extends RequestsState {
  bool? cartable;
  List<GetRequestForViewDto> requestItems;
  List<GetEnterLeaveForViewDto> enterLeaveItems;
  GetRequestsDataSuccess(
      this.requestItems, this.enterLeaveItems, this.cartable);
  @override
  List<Object?> get props => [requestItems, enterLeaveItems, cartable];
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

class RequestAccepted extends RequestsState {
  int id;
  bool enterLeave;
  RequestAccepted(this.id, this.enterLeave);
  @override
  List<Object?> get props => [id, enterLeave];
}

class RequestRejected extends RequestsState {
  bool enterLeave;
  int id;
  RequestRejected(this.id, this.enterLeave);
  @override
  List<Object?> get props => [id, enterLeave];
}

class ActionButtonLoadingState extends RequestsState {
  int id;
  ActionButtonLoadingState(this.id);
  @override
  List<Object?> get props => [id];
}

class ActionButtonErrorState extends RequestsState {
  String message;
  ActionButtonErrorState(this.message);
  @override
  List<Object?> get props => [message];
}

class ImageLoaded extends RequestsState {
  int id;
  Uint8List imageBytes;

  ImageLoaded(this.id, this.imageBytes);

  @override
  List<Object?> get props => [id, imageBytes];
}
