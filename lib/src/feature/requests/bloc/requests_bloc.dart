import 'dart:convert';
import 'dart:typed_data';
import 'dart:io';

import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart';

class RequestsBloc extends Bloc<RequestsEvent, RequestsState> {
  RequestsApi _requestsApi;
  EnterLeavesApi _enterLeavesApi;
  ProfileApi _profileApi;

  RequestsBloc(this._requestsApi, this._enterLeavesApi, this._profileApi)
      : super(RequestsInitialState());

  @override
  Stream<RequestsState> mapEventToState(RequestsEvent event) async* {
    if (event is GetRequestsData) {
      yield* _getRequestsData(event);
    } else if (event is ShowRequestsLoading) {
      yield RequestsLoadingState(event.isLoading);
    } else if (event is ShowRequestsError) {
      yield RequestsErrorState(event.message);
    } else if (event is AcceptRequest) {
      yield* _acceptRequest(event);
    } else if (event is RejectRequest) {
      yield* _rejectRequest(event);
    }
  }

  Stream<RequestsState> _getRequestsData(GetRequestsData event) async* {
    yield RequestsLoadingState(true);
    try {
      var requestsResponse =
          await _requestsApi.apiServicesAppRequestsGetallGet();
      var enterLeavesResponse =
          await _enterLeavesApi.apiServicesAppEnterleavesGetallGet();

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
    } on SocketException catch (e) {
      Log.e(e);
      yield RequestsErrorState('اتصال اینترنت خود را بررسی کنید.');
    }on Exception catch (e) {
      Log.e(e);
      yield RequestsErrorState(e.toString());
    }
  }

  Stream<RequestsState> _acceptRequest(AcceptRequest event) async* {
    yield ActionButtonLoadingState(event.id);
    try {
      if (!event.enterLeave) {
        var acceptRequestResponse =
            await _requestsApi.apiServicesAppRequestsApproverequestsPost([
          {
            "request": {
              "creatorUserId": 1,
              "comment": "string",
              "rejectReason": "string",
              "id": 12
            }
          }
        ]);
      } else {
        var acceptEnterLeaveResponse =
            await _enterLeavesApi.apiServicesAppEnterleavesApproverequestsPost([
          {
            "enterLeave": {
              "creatorUserId": 1,
              "comment": "string",
              "rejectReason": "string",
              "id": 12
            }
          }
        ]);
      }
      yield RequestAccepted(event.id, event.enterLeave);
    } on SocketException catch (e) {
      Log.e(e);
      yield RequestsErrorState('اتصال اینترنت خود را بررسی کنید.');
    }on Exception catch (e) {
      Log.e(e);
      yield RequestsErrorState(e.toString());
    }
  }

  Stream<RequestsState> _rejectRequest(RejectRequest event) async* {
    yield ActionButtonLoadingState(event.id);
    try {
      if (!event.enterLeave) {
        var rejectRequestResponse =
            await _requestsApi.apiServicesAppRequestsRejectrequestsPost([
          {
            "request": {
              "creatorUserId": 1,
              "comment": "string",
              "rejectReason": "string",
              "id": 12
            }
          }
        ]);
      } else {
        var rejectEnterLeaveResponse =
            await _enterLeavesApi.apiServicesAppEnterleavesRejectrequestsPost([
          {
            "enterLeave": {
              "creatorUserId": 1,
              "comment": "string",
              "rejectReason": "string",
              "id": 12
            }
          }
        ]);
      }
      
      yield RequestRejected(event.id,event.enterLeave);
    } on SocketException catch (e) {
      Log.e(e);
      yield RequestsErrorState('اتصال اینترنت خود را بررسی کنید.');
    }on Exception catch (e) {
      Log.e(e);
      yield RequestsErrorState(e.toString());
    }
  }

  Stream<RequestsState> _loadImage(LoadImage event) async* {
    try {
      var response =
          await _profileApi.apiServicesAppProfileGetprofilepicturebyuserGet(
              userId: event.userId);

      if (response != null) {
        if (response.profilePicture != null) {
          Uint8List imageData =
              Base64Decoder().convert(response.profilePicture!);
          yield ImageLoaded(event.widgetId, imageData);
        }
      }
    } on Exception catch (e) {
      Log.e(e);
    }
  }
}
