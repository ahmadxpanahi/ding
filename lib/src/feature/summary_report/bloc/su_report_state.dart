import 'package:equatable/equatable.dart';

abstract class SummaryReportState extends Equatable {}

class SuReportInitialState extends SummaryReportState {
  @override
  List<Object?> get props => [];
}

class SuReportLoadingState extends SummaryReportState {
  final bool isLoading;
  SuReportLoadingState(this.isLoading);
  @override
  List<Object?> get props => [isLoading];
}

class SuReportErrorState extends SummaryReportState {
  final String message;
  SuReportErrorState(this.message);
  @override
  List<Object?> get props => [message];
}
