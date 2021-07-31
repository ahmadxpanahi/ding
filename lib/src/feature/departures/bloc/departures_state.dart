import 'package:equatable/equatable.dart';

abstract class DeparturesState extends Equatable {}

class DeparturesInitialState extends DeparturesState {
  DeparturesInitialState();
  @override
  List<Object?> get props => [];
}

class DeparturesStatusState extends DeparturesState {
  bool isEnter;
  int selectedPage;
  int progress;
  bool showDialog;
  bool networkConnection;
  DeparturesStatusState(
      {this.networkConnection = false,
      this.isEnter = true,
      this.progress = 0,
      this.showDialog = false,
      this.selectedPage = 0});
  @override
  List<Object?> get props => [isEnter, progress, selectedPage];
}

class DeparturesSuccess extends DeparturesState {
  @override
  List<Object?> get props => [];
}

class DeparturesDialogState extends DeparturesState {
  @override
  List<Object?> get props => [];
}
