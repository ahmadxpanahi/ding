import 'package:ding/src/data/http/interceptor.dart';
import 'package:ding/src/data/http/rest_client.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_event.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swagger/api.dart';

class CreateRequestsBloc extends Bloc<CreateRequestEvent,CreateRequestState>{
  TokenManager? _tokenManager;
  RequestsApi? _requestsApi;
  EnterLeavesApi? _enterLeavesApi;
  CreateRequestsBloc() : super(CrRequestInitialState()){
    Future.delayed(Duration.zero, () async {
      var sp = await SharedPreferences.getInstance();
      _tokenManager = TokenManager(sp);
      var interceptor = AccessTokenInterceptor(_tokenManager!);
      var api = ApiClient(
          basePath: 'https://dinghost.daustany.ir',
          client: RestClient(interceptor, _tokenManager!));
      _requestsApi = RequestsApi(api);
      _enterLeavesApi = EnterLeavesApi(api);
    });
  }

  @override
  Stream<CreateRequestState> mapEventToState(CreateRequestEvent event) async* {
    if(event is CreateRequest){
      yield* _createRequest(event);
    }else if(event is ShowCrRequestsLoading){
      yield CrRequestLoadingState();
    }
  }

  Stream<CreateRequestState> _createRequest(CreateRequest event) async* {
    yield CrRequestLoadingState();
    try {
      var response = await _requestsApi?.apiServicesAppRequestsCreateoreditPost(
          body: CreateOrEditRequestDto()
            ..comment = event.comment
            ..status = event.requestStatus
            ..requestType = event.requestType
            ..from = event.beginDate
            ..to = event.endDate);
      if(response != null){
        yield CreateRequestSuccess();
      }else{
        yield CrRequestErrorState('خطا در ارسال اطلاعات');
      }
    } on Exception catch (e) {
      print(e);
      yield CrRequestErrorState(e.toString());
    }
  }
}
