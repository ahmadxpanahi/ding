import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/data/http/interceptor.dart';
import 'package:ding/src/data/http/rest_client.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_event.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swagger/api.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
class CreateRequestsBloc extends Bloc<CreateRequestEvent,CreateRequestState>{
  RequestsApi? _requestsApi;
  EnterLeavesApi? _enterLeavesApi;

  CreateRequestsBloc(this._enterLeavesApi,this._requestsApi) : super(CrRequestInitialState());

  @override
  Stream<CreateRequestState> mapEventToState(CreateRequestEvent event) async* {
    if(event is CreateRequest){
      yield* _createRequest(event);
    } else if(event is ShowCrRequestsLoading){
      yield CrRequestLoadingState();
    }else if(event is UpdateRequestType){
      yield UpdateRequestsTypeState(type: event.type);
    }
  }

  Stream<CreateRequestState> _createRequest(CreateRequest event) async* {
    yield CrRequestLoadingState();
    Log.i(event.type);
    try {
      if(event.type == 1 || event.type == 3){
        await _requestsApi?.apiServicesAppRequestsCreateoreditPost(
            body: CreateOrEditRequestDto()
              ..comment = event.comment
              ..status = event.requestStatus
              ..requestType = event.requestType
              ..from = event.beginDate
              ..to = event.endDate);
      }else if(event.type == 2){
        await _enterLeavesApi?.apiServicesAppEnterleavesCreateoreditPost(
            body: CreateOrEditEnterLeaveDto()
              ..comment = event.comment
              ..status = event.requestStatus
              ..enterLeaveType = event.requestType
              ..occurDate = event.date
              ..occurTime = event.time
        );
      }
      yield CreateRequestSuccess();
    } on Exception catch (e) {
      print(e);
      yield CrRequestErrorState(e.toString());
    }
  }
}
