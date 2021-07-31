import 'package:ding/src/feature/summary_report/bloc/su_report_event.dart';
import 'package:ding/src/feature/summary_report/bloc/su_report_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SummaryReportBloc extends Bloc<SummaryReportEvent, SummaryReportState> {
  SummaryReportBloc() : super(SuReportInitialState());

  @override
  Stream<SummaryReportState> mapEventToState(SummaryReportEvent event) async* {
    if (event is GetSummaryReportData) {
      yield SuReportInitialState();
    } else if (event is ShowSuReportLoading) {
      yield SuReportLoadingState(event.isLoading);
    } else if (event is ShowSuReportError) {
      yield SuReportErrorState(event.message);
    }
  }
}
