import 'package:equatable/equatable.dart';

abstract class CreateRequestState extends Equatable {}

class CrRequestInitialState extends CreateRequestState {
  @override
  List<Object?> get props => [];
}

class UpdateRequestsTypeState extends CreateRequestState {
  final int type;
  UpdateRequestsTypeState({this.type = 1});
  @override
  List<Object?> get props => [type];
}

class CreateRequestSuccess extends CreateRequestState {
  @override
  List<Object?> get props => [];
}

class CrRequestLoadingState extends CreateRequestState {
  CrRequestLoadingState();
  @override
  List<Object?> get props => [];
}

class CrRequestErrorState extends CreateRequestState {
  String message;
  CrRequestErrorState(this.message);
  @override
  List<Object?> get props => [];
}
