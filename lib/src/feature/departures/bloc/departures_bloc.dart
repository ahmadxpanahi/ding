import 'dart:io';

import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeparturesBloc extends Bloc<DeparturesEvent, DeparturesState> {
  DeparturesBloc() : super(DeparturesInitialState());

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
    bool connection = await checkNetworkConnection();
    await Future.delayed(Duration(milliseconds: 1000));
    if (!connection) {
      yield DeparturesStatusState(
          networkConnection: false,
          showDialog: true,
          isEnter: event.isEnter,
          selectedPage: event.selectedPage);
    } else {
      yield DeparturesStatusState(
          isEnter: event.isEnter,
          progress: 2,
          selectedPage: event.selectedPage);
      await Future.delayed(Duration(milliseconds: 2000));
      yield DeparturesStatusState(
          networkConnection: true,
          showDialog: true,
          isEnter: event.isEnter,
          selectedPage: event.selectedPage);
    }
  }
}

Future<bool> checkNetworkConnection() async {
  bool connection = false;
  try {
    final result = await InternetAddress.lookup('https://dinghost.daustany.ir');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      connection = true;
    }
  } on SocketException catch (_) {
    connection = false;
  }
  return connection;
}
