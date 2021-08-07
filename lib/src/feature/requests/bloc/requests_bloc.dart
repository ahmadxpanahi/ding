import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart';

class RequestsBloc extends Bloc<RequestsEvent, RequestsState> {
  RequestsApi _requestsApi;
  EnterLeavesApi _enterLeavesApi;

  RequestsBloc(this._requestsApi, this._enterLeavesApi)
      : super(RequestsInitialState());
  @override
  Stream<RequestsState> mapEventToState(RequestsEvent event) async* {
    if (event is GetRequestsData) {
      yield* _getRequestsData(event);
    } else if (event is ShowRequestsLoading) {
      yield RequestsLoadingState(event.isLoading);
    } else if (event is ShowRequestsError) {
      yield RequestsErrorState(event.message);
    }
  }

  Stream<RequestsState> _getRequestsData(GetRequestsData event) async* {
    yield RequestsLoadingState(true);
    try {
      var requestsResponse =
          await _requestsApi.apiServicesAppRequestsGetallGet();
      var enterLeavesResponse =
          await _enterLeavesApi.apiServicesAppEnterleavesGetallGet();
      Log.e(requestsResponse);
      Log.wtf(enterLeavesResponse);
      if (requestsResponse != null && enterLeavesResponse != null) {
        yield GetRequestsDataSuccess(
            event.cartable
                ? requestsResponse.items
                    .where((element) => element.request?.status?.value == 1)
                    .toList()
                : requestsResponse.items,
            event.cartable
                ? enterLeavesResponse.items
                .where((element) => element.enterLeave?.status?.value == 1)
                .toList()
                : enterLeavesResponse.items,
            event.cartable);
      } else {
        Log.e('خطا در دریافت اطلاعات');
        yield RequestsErrorState('خطا در دریافت اطلاعات');
      }
    } on Exception catch (e) {
      Log.e(e);
      yield RequestsErrorState(e.toString());
    }
  }
}
