import 'package:equatable/equatable.dart';

abstract class DetailedReportState extends Equatable{}

class DeReportInitialState extends DetailedReportState{
  @override
  List<Object?> get props => [];

}

class DeReportLoadingState extends DetailedReportState{
  final bool isLoading;
  DeReportLoadingState(this.isLoading);
  @override
  List<Object?> get props => [isLoading];

}

class DeReportErrorState extends DetailedReportState{
  final String message;
  DeReportErrorState(this.message);
  @override
  List<Object?> get props => [message];

}
