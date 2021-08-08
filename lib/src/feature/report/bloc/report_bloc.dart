import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/report/bloc/report_event.dart';
import 'package:ding/src/feature/report/bloc/report_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart';

class ReportBloc extends Bloc<ReportEvent,ReportState>{
  DetailedEmployeeReportsApi _detailedEmployeeReportsApi;
  SummaryEmployeeReportsApi _summaryEmployeeReportsApi;
  TokenManager _tokenManager;
  ReportBloc(this._detailedEmployeeReportsApi,this._tokenManager,this._summaryEmployeeReportsApi) : super(ReportInitialState());

  @override
  Stream<ReportState> mapEventToState(ReportEvent event)async*{
    if(event is ShowReportLoading){
      yield ReportLoadingState();
    }else if(event is GetSummaryReports){
      yield* _getSummaryReports(event);
    }else if(event is GetDetailedReports){
      yield* _getDetailedReports(event);
    }
  }

  Stream<ReportState> _getDetailedReports(GetDetailedReports event) async* {
    yield ReportLoadingState();
    try {
      var response = await _detailedEmployeeReportsApi.apiServicesAppDetailedemployeereportsGetallGet(
        reportDateFrom: DateTime.now(),
        reportDateTo: DateTime.now(),
        userIdFilter: _tokenManager.getUserId()
      );

      if(response != null) {
        yield DetailedReportsFetched(response.items);
      } else {
        Log.e('NULL');
        yield ReportErrorState("خطا در دریافت اطلاعات");
      }
    } on Exception catch (e) {
      Log.e(e);
      yield ReportErrorState(e.toString());
    }
  }

  Stream<ReportState> _getSummaryReports(GetSummaryReports event) async* {
    yield ReportLoadingState();
    try {
      var response = await _summaryEmployeeReportsApi.apiServicesAppSummaryemployeereportsGetallGet(
          reportDateFrom: DateTime.now(),
          reportDateTo: DateTime.now(),
          userIdsFilter: _tokenManager.getUserId() != null ? [_tokenManager.getUserId()!] : []
      );

      if(response != null) {
        yield SummaryReportsFetched(response.items);
      } else {
        Log.e('NULL');
        yield ReportErrorState("خطا در دریافت اطلاعات");
      }
    } on Exception catch (e) {
      Log.e(e);
      yield ReportErrorState(e.toString());
    }
  }

}
