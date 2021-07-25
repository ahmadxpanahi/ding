import 'package:equatable/equatable.dart';

abstract class DeparturesState extends Equatable {}

class DeparturesInitialState extends DeparturesState {
  @override
  List<Object?> get props => [];
}

class DeparturesStatusState extends DeparturesState {
  bool isEnter;
  int progress;
  bool showDialog;
  DeparturesStatusState({this.isEnter=true,this.progress=0,this.showDialog = false});
  @override
  List<Object?> get props => [isEnter,progress];
}

class DeparturesSuccess extends DeparturesState{
  @override
  List<Object?> get props => [];

}
