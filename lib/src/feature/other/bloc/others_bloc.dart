import 'dart:convert';
import 'dart:typed_data';

import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/other/bloc/others_event.dart';
import 'package:ding/src/feature/other/bloc/others_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart';

class OthersBloc extends Bloc<OthersEvent, OthersState> {
  ProfileApi _profileApi;
  TokenManager _tokenManager;

  OthersBloc(this._profileApi, this._tokenManager)
      : super(OthersInitialState());

  @override
  Stream<OthersState> mapEventToState(OthersEvent event) async* {
    if (event is LoadProfile) {
      yield* _loadProfileBasics(event);
    }
  }

  Stream<OthersState> _loadProfileBasics(LoadProfile event) async* {
    int userId = _tokenManager.getUserId() ?? 0;
    String userProfileName = _tokenManager.getUserFirstLastName() ?? "-";

    var response = await _profileApi
        .apiServicesAppProfileGetprofilepicturebyuserGet(userId: userId);

    if (response != null) {
      if (response.profilePicture != null && response.profilePicture!.length > 10) {        
        Uint8List imageData = Base64Decoder().convert(response.profilePicture!);
        yield ProfileLoaded(imageData, userProfileName);
      } else {
        yield ProfileLoaded(null, userProfileName);
      }
    }
  }
}
