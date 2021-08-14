import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

abstract class DeparturesEvent extends Equatable {}

class DoDeparturesEvent extends DeparturesEvent {
  bool isEnter;
  int selectedPage;

  DoDeparturesEvent(this.isEnter, this.selectedPage);
  @override
  List<Object?> get props => [isEnter, selectedPage];
}

class GetEnterOrLeaveTime extends DeparturesEvent {
  GetEnterOrLeaveTime();
  @override
  List<Object?> get props => [];
}

class BackToInitial extends DeparturesEvent {
  BackToInitial();
  @override
  List<Object?> get props => [];
}
