import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

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

class CreateRequest extends RequestsEvent {
  final int? requestType;
  final int? requestStatus;
  final DateTime? beginDate;
  final DateTime? endDate;
  final String comment;
  CreateRequest(
      {this.requestStatus,
        this.beginDate,
        this.endDate,
        this.requestType,
        this.comment = ''});
  @override
  List<Object?> get props => [requestType, requestStatus, beginDate, endDate];
}

class UpdateRequestType extends RequestsEvent{
  final int type;
  UpdateRequestType({this.type = 1});
  @override
  List<Object?> get props => [type];

}

