import 'package:equatable/equatable.dart';
import 'package:jalali_calendar/jalali_calendar.dart';

abstract class ReportEvent extends Equatable{}

class GetUserProfile extends ReportEvent{
  @override
  List<Object?> get props => [];
}

class GetDetailedReports extends ReportEvent{
  PersianDate beginDate;
  PersianDate endDate;
  GetDetailedReports(this.beginDate,this.endDate);
  @override
  List<Object?> get props => [beginDate,endDate];

}

class GetSummaryReports extends ReportEvent{
  PersianDate beginDate;
  PersianDate endDate;
  GetSummaryReports(this.beginDate,this.endDate);
  @override
  List<Object?> get props => [beginDate,endDate];

}

class ShowReportLoading extends ReportEvent{
  @override
  List<Object?> get props =>[];
}
