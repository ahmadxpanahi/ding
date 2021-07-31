import 'package:equatable/equatable.dart';

abstract class DetailedReportEvent extends Equatable {}

class GetDetailedReportData extends DetailedReportEvent {
  @override
  List<Object?> get props => [];
}

class ShowDeReportLoading extends DetailedReportEvent {
  final bool isLoading;
  ShowDeReportLoading(this.isLoading);
  @override
  List<Object?> get props => [isLoading];
}

class ShowDeReportError extends DetailedReportEvent {
  final String message;
  ShowDeReportError(this.message);
  @override
  List<Object?> get props => [message];
}
