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

class GetRequestsData extends RequestsEvent{
  bool cartable;
  GetRequestsData(this.cartable);
  @override
  List<Object?> get props => [cartable];

}



