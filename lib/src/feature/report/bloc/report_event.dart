import 'package:equatable/equatable.dart';
import 'package:jalali_calendar/jalali_calendar.dart';

abstract class ReportEvent extends Equatable{}

class GetDetailedReports extends ReportEvent{
  PersianDate date;
  GetDetailedReports(this.date);
  @override
  List<Object?> get props => [date];

}

class GetSummaryReports extends ReportEvent{
  PersianDate date;
  GetSummaryReports(this.date);
  @override
  List<Object?> get props => [date];

}

class ShowReportLoading extends ReportEvent{
  @override
  List<Object?> get props =>[];
}
