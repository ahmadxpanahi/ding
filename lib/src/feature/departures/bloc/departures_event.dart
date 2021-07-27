import 'package:equatable/equatable.dart';

abstract class DeparturesEvent extends Equatable {}

class DoDeparturesEvent extends DeparturesEvent {
  bool isEnter;
  int selectedPage;
  DoDeparturesEvent(this.isEnter,this.selectedPage);
  @override
  List<Object?> get props => [isEnter,selectedPage];
}

class BackToInitial extends DeparturesEvent {
  BackToInitial();
  @override
  List<Object?> get props => [];
}
