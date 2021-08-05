import 'dart:io';

import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/data/http/interceptor.dart';
import 'package:ding/src/data/http/rest_client.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swagger/api.dart';

class RequestsBloc extends Bloc<RequestsEvent, RequestsState> {
  TokenManager? _tokenManager;
  RequestsApi? _requestsApi;
  EnterLeavesApi? _enterLeavesApi;

  RequestsBloc() : super(RequestsInitialState()) {
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
  Stream<RequestsState> mapEventToState(RequestsEvent event) async* {
    if (event is GetMyRequestsData) {
      yield* _getMyRequestsData(event);
    } else if (event is GetCartableData) {
      yield RequestsInitialState();
    } else if (event is ShowRequestsLoading) {
      yield RequestsLoadingState(event.isLoading);
    } else if (event is CreateRequest) {
      yield* _createRequest(event);
    }else if(event is ShowRequestsError){
      yield RequestsErrorState(event.message);
    } else if (event is UpdateRequestType) {
      yield UpdateRequestsTypeState(type:event.type);
    }
  }

  Stream<RequestsState> _getMyRequestsData(GetMyRequestsData event) async* {
    yield RequestsLoadingState(true);
    try {
      var response = await _requestsApi?.apiServicesAppRequestsGetallGet();
      print(response);
      yield GetMyRequestsDataSuccess();
    } on ApiException catch (e) {
      yield RequestsLoadingState(false);
    }
  }

  Stream<RequestsState> _createRequest(CreateRequest event) async* {
    yield RequestsLoadingState(true);
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
        yield RequestsErrorState('خطا در ارسال اطلاعات');
      }
    } on Exception catch (e) {
      print(e);
      yield RequestsErrorState(e.toString());
    }
  }
}
