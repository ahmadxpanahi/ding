import 'package:equatable/equatable.dart';

abstract class SummaryReportEvent extends Equatable {}

class GetSummaryReportData extends SummaryReportEvent {
  @override
  List<Object?> get props => [];
}

class ShowSuReportLoading extends SummaryReportEvent {
  final bool isLoading;
  ShowSuReportLoading(this.isLoading);
  @override
  List<Object?> get props => [isLoading];
}

class ShowSuReportError extends SummaryReportEvent {
  final String message;
  ShowSuReportError(this.message);
  @override
  List<Object?> get props => [message];
}
