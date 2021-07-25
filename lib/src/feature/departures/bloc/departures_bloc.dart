import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeparturesBloc extends Bloc<DeparturesEvent, DeparturesState> {
  DeparturesBloc() : super(DeparturesInitialState());

  @override
  Stream<DeparturesState> mapEventToState(DeparturesEvent event) async* {
    if (event is DoDeparturesEvent) {
      yield* _doDeparture(event);
    }else{
      yield DeparturesInitialState();
    }
  }

  Stream<DeparturesState> _doDeparture(DoDeparturesEvent event) async* {

    await Future.delayed(Duration(milliseconds: 2000));
    yield DeparturesStatusState(isEnter: event.isEnter,progress: 0);
    await Future.delayed(Duration(milliseconds: 2000));
    yield DeparturesStatusState(isEnter: event.isEnter,progress: 1);
    await Future.delayed(Duration(milliseconds: 2000));
    yield DeparturesStatusState(isEnter: event.isEnter,progress: 2);
    await Future.delayed(Duration(milliseconds: 2000));
    yield DeparturesStatusState(showDialog: true,isEnter: event.isEnter);
  }
}
