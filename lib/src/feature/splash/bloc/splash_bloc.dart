import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/splash/bloc/splash_event.dart';
import 'package:ding/src/feature/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  AccountApi _accountApi;
  TokenManager _tokenManager;

  SplashBloc(this._accountApi, this._tokenManager) : super(SplashInitialState());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is LoadProfileBasics) {
      yield* _loadProfileBasics(event);
    }
  }

  Stream<SplashState> _loadProfileBasics(LoadProfileBasics event) async* {
    UserEditDto? response;
    try {
      response = await _accountApi.apiServicesAppAccountGetprofileGet();
    } on Exception catch(e) {

    }

    if(response != null) {
      await _tokenManager.setUserFirstLastName("${response.name} ${response.surname}");
      await _tokenManager.setUsername(response.userName ?? "");

      Log.e("${response.name} ${response.surname} with username: ${response.userName} is ready to go");

      yield ProfileBasicsLoaded(true);
    } else {
      yield ProfileBasicsLoaded(false);
    }
  }
}
