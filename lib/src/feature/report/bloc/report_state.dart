import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:swagger/api.dart';

abstract class ReportState extends Equatable{}

class ReportInitialState extends ReportState{
  @override
  List<Object?> get props => [];

}

class ReportProfileLoaded extends ReportState{
  Uint8List? imageBinary;
  String userProfileName;

  ReportProfileLoaded(this.imageBinary, this.userProfileName);

  @override
  List<Object?> get props => [imageBinary, userProfileName];
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