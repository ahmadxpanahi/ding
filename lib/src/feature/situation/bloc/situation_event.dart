import 'package:ding/src/feature/situation/bloc/situation_bloc.dart';
import 'package:equatable/equatable.dart';

abstract class SituationEvent extends Equatable{}

class ShowSituationLoading extends SituationEvent{
  bool isLoading;
  ShowSituationLoading(this.isLoading);
  @override
  List<Object?> get props => [];

}

class ShowSituationError extends SituationEvent{
  String message;
  ShowSituationError(this.message);
  @override
  List<Object?> get props => [];

}

class GetSituationData extends SituationEvent{
  @override
  List<Object?> get props => [];

}
