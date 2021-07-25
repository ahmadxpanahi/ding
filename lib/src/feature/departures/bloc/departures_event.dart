import 'package:equatable/equatable.dart';

abstract class DeparturesEvent extends Equatable {}

class DoDeparturesEvent extends DeparturesEvent {
  bool isEnter;
  DoDeparturesEvent(this.isEnter);
  @override
  List<Object?> get props => [isEnter];
}

class BackToInitial extends DeparturesEvent{

  @override
  List<Object?> get props => [];

}
