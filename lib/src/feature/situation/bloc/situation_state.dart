import 'package:equatable/equatable.dart';

abstract class SituationState extends Equatable {}

class SituationInitialState extends SituationState {
  @override
  List<Object?> get props => [];
}

class SituationLoadingState extends SituationState {
  bool isLoading;
  SituationLoadingState(this.isLoading);
  @override
  List<Object?> get props => [isLoading];
}

class SituationErrorState extends SituationState {
  String message;
  SituationErrorState(this.message);
  @override
  List<Object?> get props => [message];
}
