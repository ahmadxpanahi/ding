import 'package:ding/src/feature/detailed_report/bloc/de_report_event.dart';
import 'package:ding/src/feature/detailed_report/bloc/de_report_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailedReportBloc
    extends Bloc<DetailedReportEvent, DetailedReportState> {
  DetailedReportBloc() : super(DeReportInitialState());

  @override
  Stream<DetailedReportState> mapEventToState(
      DetailedReportEvent event) async* {
    if (event is GetDetailedReportData) {
      yield DeReportInitialState();
    } else if (event is ShowDeReportLoading) {
      yield DeReportLoadingState(event.isLoading);
    }
  }
}
