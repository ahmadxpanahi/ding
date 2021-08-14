import 'package:equatable/equatable.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
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

class GetRequestsData extends RequestsEvent {
  bool cartable;
  GetRequestsData(this.cartable);
  @override
  List<Object?> get props => [cartable];
}

class AcceptRequest extends RequestsEvent {
  final bool enterLeave;
  final int id;
  AcceptRequest(this.id, this.enterLeave);
  @override
  List<Object?> get props => [id, enterLeave];
}

class RejectRequest extends RequestsEvent {
  final int id;
  final bool enterLeave;
  RejectRequest(this.id, this.enterLeave);
  @override
  List<Object?> get props => [id, enterLeave];
}

class ShowActionButtonLoading extends RequestsEvent {
  @override
  List<Object?> get props => [];
}

class LoadImage extends RequestsEvent {
  final int widgetId;
  final int userId;

  LoadImage(this.widgetId, this.userId);

  @override
  List<Object?> get props => [widgetId, userId];
}
