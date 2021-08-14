import 'dart:io';
import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/data/http/interceptor.dart';
import 'package:ding/src/data/http/rest_client.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swagger/api.dart';

class DeparturesBloc extends Bloc<DeparturesEvent, DeparturesState> {
  UserClockInOutsApi _userClockInOutsApi;
  TokenManager _tokenManager;

  DeparturesBloc(this._userClockInOutsApi, this._tokenManager)
      : super(DeparturesInitialState());

  @override
  Stream<DeparturesState> mapEventToState(DeparturesEvent event) async* {
    if (event is DoDeparturesEvent) {
      yield* _doDeparture(event);
    } else if (event is GetEnterOrLeaveTime) {
      yield* _getEnterLeaveTime(event);
    } else {
      yield DeparturesInitialState();
    }
  }

  Stream<DeparturesState> _doDeparture(DoDeparturesEvent event) async* {
    yield DeparturesStatusState(
        isEnter: event.isEnter, progress: 0, selectedPage: event.selectedPage);

    await Future.delayed(Duration(milliseconds: 2000));

    yield DeparturesStatusState(
        isEnter: event.isEnter, progress: 1, selectedPage: event.selectedPage);

    bool? connection = await _checkNetworkConnection();
    await Future.delayed(Duration(milliseconds: 1000));
    if (!connection!) {
      yield DeparturesStatusState(
          dialogType: 'network',
          showDialog: true,
          isEnter: event.isEnter,
          selectedPage: event.selectedPage);
    } else {
      yield DeparturesStatusState(
          isEnter: event.isEnter,
          progress: 2,
          selectedPage: event.selectedPage);

      try {
        var createOrEdit = CreateOrEditUserClockInOutDto()
          ..userId = _tokenManager.getUserId()
          ..clock = DateTime.now()
          ..clockInOutType = event.isEnter
              ? UserClockInOutType.number1_
              : UserClockInOutType.number2_
          ..weekNumber = 1
          ..workScheduleId = 1
          ..abnormalityType = UserWorkScheduleAbnormalities.number1_;

        var response = await _userClockInOutsApi
            .apiServicesAppUserclockinoutsCreateoreditPost(body: createOrEdit);

        if (response != null && response['success']) {
          yield DeparturesStatusState(
              dialogType: 'success',
              showDialog: true,
              isEnter: event.isEnter,
              selectedPage: event.selectedPage);
        } else {
          yield DoDepartureError('خطا در ارسال اطلاعات');
        }
      } on ApiException catch (e) {
        yield DoDepartureError(e.message ?? '');
      }
    }
  }

  Stream<DeparturesState> _getEnterLeaveTime(GetEnterOrLeaveTime event) async* {
    try {
      var response = await _userClockInOutsApi
          .apiServicesAppUserclockinoutsGetuserclocksstatusGet(
        minClockFilter: DateTime(2020, 1, 1),
        maxClockFilter: DateTime(2022, 1, 1),
      );

      yield GetEnterOrLeaveTimeSuccessful(
          response != null && response.items.length > 0
              ? response.items.last
              : null);
    } on Exception catch (e) {
      Log.e(e.toString());
    }
  }

  Future<bool?> _checkNetworkConnection() async {
    bool? connection;
    try {
      final result = await InternetAddress.lookup('www.google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        connection = true;
      }
    } on SocketException catch (_) {
      connection = false;
    }
    return connection;
  }
}
