import 'dart:io';
import 'package:ding/src/data/http/interceptor.dart';
import 'package:ding/src/data/http/rest_client.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swagger/api.dart';

class DeparturesBloc extends Bloc<DeparturesEvent, DeparturesState> {
  UserClockInOutsApi? _userClockInOutsApi;
  TokenManager? tokenManager;

  DeparturesBloc() : super(DeparturesInitialState()) {
    Future.delayed(Duration.zero, () async {
      var sp = await SharedPreferences.getInstance();
      tokenManager = TokenManager(sp);
      var interceptor = AccessTokenInterceptor(tokenManager!);
      var api = ApiClient(
          basePath: 'https://dinghost.daustany.ir',
          client: RestClient(interceptor, tokenManager!));
      _userClockInOutsApi = UserClockInOutsApi(api);
    });
  }
  @override
  Stream<DeparturesState> mapEventToState(DeparturesEvent event) async* {
    if (event is DoDeparturesEvent) {
      yield* _doDeparture(event);
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
    print(connection);
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

      try{
        var response = await _userClockInOutsApi
            ?.apiServicesAppUserclockinoutsCreateoreditPost(
          body: CreateOrEditUserClockInOutDto()
            ..userId = tokenManager?.getUserId()
            ..clock = DateTime.now()
            ..clockInOutType = event.isEnter
                ? UserClockInOutType.number1_
                : UserClockInOutType.number2_
            ..workScheduleId = 0
            ..workHourId = 0
            ..projectName = ''
            ..description = ''
            ..organizationUnitId = 0
            ..abnormalityType = UserWorkScheduleAbnormalities.number1_
            ..weekNumber = 1
            ..id = 0,
        );
        print('response');
        print(response);
        yield DeparturesStatusState(
            dialogType: 'success',
            showDialog: true,
            isEnter: event.isEnter,
            selectedPage: event.selectedPage);
      }on ApiException catch (e) {
        print('EXEPTION');
        yield DoDepartureError(e.message??'');
      }
    }
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
