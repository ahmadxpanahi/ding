import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequestsBloc extends Bloc<RequestsEvent,RequestsState>{
  RequestsBloc() : super(RequestsInitialState());

  @override
  Stream<RequestsState> mapEventToState(RequestsEvent event) async* {
    if(event is GetCartableData){
      yield RequestsInitialState();
    }else if(event is ShowRequestsLoading){
      yield RequestsLoadingState(event.isLoading);
    }
  }

}