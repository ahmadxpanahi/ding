import 'package:ding/src/bloc/login_bloc/login_event.dart';
import 'package:ding/src/bloc/login_bloc/login_state.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{
  TokenAuthApi _tokenAuthApi;
  TokenManager _tokenManager;

  LoginBloc(this._tokenAuthApi,this._tokenManager) : super(LoginInitialState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginWithEmail) {
      yield* _loginWithEmail(event);
    } else if (event is LoginWithPhoneNumber) {
      yield* _loginWithPhoneNumber(event);
    } else if (event is ShowLoginError) {
      yield LoginErrorState(message: event.message);
    } else if (event is ShowLoginLoading) {
      yield LoginLoadingState(true);
    }
  }

  Stream<LoginState> _loginWithEmail(LoginWithEmail event) async* {
    yield LoginLoadingState(true);

    try {
      var response = await _tokenAuthApi.apiTokenauthAuthenticatebytenantPost(
          body: AuthenticateByTenantModel()
            ..tenancyName = event.tenancyName
            ..userNameOrEmailAddress = event.userName
            ..password = event.password
            ..rememberClient = true
            ..twoFactorRememberClientToken = ''
            ..twoFactorVerificationCode = ''
            ..singleSignIn = true
            ..returnUrl = ''
            ..captchaResponse = '');

      await _tokenManager.setAccessToken(response?.accessToken ?? "");
      await _tokenManager.setUserId(response?.userId);

      yield LoginWithEmailSuccessful(response);
    } on ApiException catch (e) {
      yield LoginErrorState(message: e.message);
    } finally {
      yield LoginLoadingState(false);
    }
  }

  // Stream<LoginState> _setOTPOnUser(LoginWithPhoneNumber event) async* {
  //   yield LoginLoadingState(true);
  //   try {
  //     var response = await _tokenAuthApi.apiTokenauthAuthenticatebyOTPPost(
  //         body: AuthenticateByTenantModel()
  //           ..tenancyName = event.tenancyName
  //     );
  //
  //     await _tokenManager.setAccessToken(response?.accessToken ?? "");
  //     await _tokenManager.setUserId(response?.userId);
  //
  //     yield LoginWithEmailSuccessful(response);
  //   } on ApiException catch (e) {
  //     yield LoginErrorState(message: e.message);
  //   } finally {
  //     yield LoginLoadingState(false);
  //   }
  // }

  Stream<LoginState> _loginWithPhoneNumber(LoginWithPhoneNumber event) async* {
    yield LoginLoadingState(true);
    try {
      var response = await _tokenAuthApi.apiTokenauthAuthenticatebyOTPPost(
        body: AuthenticateByTenantModel()
            ..tenancyName = event.tenancyName
      );

      await _tokenManager.setAccessToken(response?.accessToken ?? "");
      await _tokenManager.setUserId(response?.userId);

      yield LoginWithEmailSuccessful(response);
    } on ApiException catch (e) {
      yield LoginErrorState(message: e.message);
    } finally {
      yield LoginLoadingState(false);
    }
  }

}
