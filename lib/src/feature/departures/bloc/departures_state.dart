import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

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
  String dialogType;
  DeparturesStatusState(
      {this.dialogType = 'success',
      this.isEnter = true,
      this.progress = 0,
      this.showDialog = false,
      this.selectedPage = 0});
  @override
  List<Object?> get props => [isEnter, progress, selectedPage];
}

class DoDepartureError extends DeparturesState {
  String message;
  DoDepartureError(this.message);
  @override
  List<Object?> get props => [message];
}

class GetEnterOrLeaveTimeSuccessful extends DeparturesState{

  final GetUserClockInOutForViewDto userClock;

  GetEnterOrLeaveTimeSuccessful(this.userClock);

  @override
  List<Object?> get props => [userClock];

}
