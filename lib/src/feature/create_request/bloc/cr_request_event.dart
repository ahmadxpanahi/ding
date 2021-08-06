import 'package:equatable/equatable.dart';

abstract class CreateRequestEvent extends Equatable{}

class CreateRequest extends CreateRequestEvent {
  final int? type;
  final int? requestType;
  final int? requestStatus;
  final String beginDate;
  final String endDate;
  final String comment;
  final String? date;
  final String? time;
  CreateRequest(
      {
        this.type,
        this.date,
        this.time,
        this.requestStatus,
        this.beginDate = "",
        this.endDate = "",
        this.requestType,
        this.comment = ''});
  @override
  List<Object?> get props => [requestType, requestStatus, beginDate, endDate, type];
}

class UpdateRequestType extends CreateRequestEvent{
  final int type;
  UpdateRequestType({this.type = 1});
  @override
  List<Object?> get props => [type];

}

class ShowCrRequestsLoading extends CreateRequestEvent {
  ShowCrRequestsLoading();
  @override
  List<Object?> get props => [];
}

class ShowCrRequestsError extends CreateRequestEvent {
  String message;
  ShowCrRequestsError(this.message);
  @override
  List<Object?> get props => [this.message];
}