import 'package:ding/src/data/http/interceptor.dart';
import 'package:ding/src/data/http/rest_client.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swagger/api.dart';

class RequestsBloc extends Bloc<RequestsEvent, RequestsState> {
  RequestsApi? _requestsApi;
  TokenManager? _tokenManager;
  RequestsBloc() : super(RequestsInitialState()) {
    Future.delayed(Duration.zero, () async {
      var sp = await SharedPreferences.getInstance();
      _tokenManager = TokenManager(sp);
      var interceptor = AccessTokenInterceptor(_tokenManager!);
      var api = ApiClient(
          basePath: 'https://dinghost.daustany.ir',
          client: RestClient(interceptor, _tokenManager!));
      _requestsApi = RequestsApi(api);
    });
  }

  @override
  Stream<RequestsState> mapEventToState(RequestsEvent event) async* {
    if(event is GetMyRequestsData){
      yield* _getMyRequestsData(event);
    }else if (event is GetCartableData) {
      yield RequestsInitialState();
    } else if (event is ShowRequestsLoading) {
      yield RequestsLoadingState(event.isLoading);
    }
  }

  Stream<RequestsState> _getMyRequestsData(GetMyRequestsData event)async*{
    yield RequestsLoadingState(true);
    try{
      var response =  await _requestsApi?.apiServicesAppRequestsGetallGet(
        filter: '',
        commentFilter: '',
        fromFilter: DateTime.now(),
        maxResultCount: 3,
        userNameFilter: 'admin',
        statusFilter: 1,
        requestTypeFilter: 1,
        skipCount: 1,
        sorting: '',
      );
      print(response);
      yield GetMyRequestsDataSuccess();
    }on ApiException catch (e) {
      print('EXEPTION');
      yield RequestsLoadingState(false);
    }
  }
}
