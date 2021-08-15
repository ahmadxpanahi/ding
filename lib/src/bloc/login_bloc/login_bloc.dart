import 'dart:io';

import 'package:ding/src/bloc/login_bloc/login_event.dart';
import 'package:ding/src/bloc/login_bloc/login_state.dart';
import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  TokenAuthApi _tokenAuthApi;
  TokenManager _tokenManager;

  LoginBloc(this._tokenAuthApi, this._tokenManager)
      : super(LoginInitialState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginWithEmail) {
      yield* _loginWithEmail(event);
    } else if (event is SetOTP) {
      yield* _setOTP(event);
    } else if (event is SendTwoFactorCode) {
      yield* _sendTwoFactorCode(event);
    } else if (event is LoginWithOTP) {
      yield* _loginWithOTP(event);
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
    } on SocketException catch (e) {
      Log.e(e);
      yield LoginErrorState(message: 'اتصال اینترنت خود را بررسی کنید');
    } on ApiException catch (e) {
      yield LoginErrorState(message: e.message.toString());
    } finally {
      yield LoginLoadingState(false);
    }
  }

  Stream<LoginState> _setOTP(SetOTP event) async* {
    yield LoginLoadingState(true);
    try {
      var response = await _tokenAuthApi.apiTokenauthSetOTPOnUserPost(
          body: AuthenticateModel()
            ..userNameOrEmailAddress = event.phoneNumber
            ..captchaResponse = ''
            ..twoFactorVerificationCode = '');

      yield OTPSent(response);
    } on SocketException catch (e) {
      Log.e(e);
      yield LoginErrorState(message: 'اتصال اینترنت خود را بررسی کنید');
    } on ApiException catch (e) {
      Log.e(e.toString());
      yield LoginErrorState(message: e.message.toString());
    } finally {
      yield LoginLoadingState(false);
    }
  }

  Stream<LoginState> _sendTwoFactorCode(SendTwoFactorCode event) async* {
    try {
      await _tokenAuthApi.apiTokenauthSendtwofactorauthcodePost(
          body: SendTwoFactorAuthCodeModel()
            ..userId = event.userId
            ..provider = 'Phone');

      yield SendTwoFactorCodeSuccessful();
    } on SocketException catch (e) {
      Log.e(e);
      yield LoginErrorState(message: 'اتصال اینترنت خود را بررسی کنید');
    } on ApiException catch (e) {
      Log.e(e.toString());
      yield LoginErrorState(message: e.message.toString());
    }
  }

  Stream<LoginState> _loginWithOTP(LoginWithOTP event) async* {
    yield LoginLoadingState(true);

    try {
      var response = await _tokenAuthApi.apiTokenauthAuthenticatebyOTPPost(
        body: AuthenticateByTenantModel()
          ..twoFactorVerificationCode = event.otp
          ..userNameOrEmailAddress = event.phoneNumber,
      );

      if (response != null) {
        await _tokenManager.setAccessToken(response.accessToken ?? "");
        await _tokenManager.setUserId(response.userId);

        yield LoginWithOTPSuccessful(response);
      } else {
        yield LoginErrorState(message: "خطا در برقراری ارتباط");
      }
    } on SocketException catch (e) {
      Log.e(e);
      yield LoginErrorState(message: 'اتصال اینترنت خود را بررسی کنید');
    } on ApiException catch (e) {
      yield LoginErrorState(message: e.message);
    } finally {
      yield LoginLoadingState(false);
    }
  }
}
