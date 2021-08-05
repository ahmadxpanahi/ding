import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart';

class RequestsBloc extends Bloc<RequestsEvent, RequestsState> {
  RequestsApi _requestsApi;
  EnterLeavesApi _enterLeavesApi;

  RequestsBloc(this._requestsApi, this._enterLeavesApi) : super(RequestsInitialState());
  @override
  Stream<RequestsState> mapEventToState(RequestsEvent event) async* {
    if (event is GetMyRequestsData) {
      yield* _getMyRequestsData(event);
    } else if (event is GetCartableData) {
      yield RequestsInitialState();
    } else if (event is ShowRequestsLoading) {
      yield RequestsLoadingState(event.isLoading);
    }else if(event is ShowRequestsError){
      yield RequestsErrorState(event.message);
    }
  }

  Stream<RequestsState> _getMyRequestsData(GetMyRequestsData event) async* {
    yield RequestsLoadingState(true);
    try {
      var response = await _requestsApi.apiServicesAppRequestsGetallGet();
      if(response != null)
      yield GetMyRequestsDataSuccess(response.items);
      else{
        yield RequestsErrorState('خطا در دریافت اطلاعات');
      }
    } on ApiException catch (e) {
      yield RequestsErrorState(e.message??'');
    }
  }

}
