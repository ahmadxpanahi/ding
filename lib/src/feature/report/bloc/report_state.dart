import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

abstract class ReportState extends Equatable{}

class ReportInitialState extends ReportState{
  @override
  List<Object?> get props => [];

}

class DetailedReportsFetched extends ReportState{
  List<GetDetailedEmployeeReportForViewDto> items;

  DetailedReportsFetched(this.items);

  @override
  List<Object?> get props => [items];
}

class SummaryReportsFetched extends ReportState{
  List<GetSummaryEmployeeReportForViewDto> items;
  SummaryReportsFetched(this.items);
  @override
  List<Object?> get props => [items];

}

class ReportLoadingState extends ReportState{
  @override
  List<Object?> get props => [];

}

class ReportErrorState extends ReportState{
  final String message;

  ReportErrorState(this.message);

  @override
  List<Object?> get props => [message];

}