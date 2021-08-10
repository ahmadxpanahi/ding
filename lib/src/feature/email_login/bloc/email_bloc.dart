import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/data/http/interceptor.dart';
import 'package:ding/src/data/http/rest_client.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/email_login/bloc/email_event.dart';
import 'package:ding/src/feature/email_login/bloc/email_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swagger/api.dart';

class EmailBloc extends Bloc<EmailEvent, EmailState> {
  TokenAuthApi _tokenAuthApi;
  TokenManager _tokenManager;

  EmailBloc(this._tokenAuthApi, this._tokenManager) : super(EmailInitialState());

  @override
  Stream<EmailState> mapEventToState(EmailEvent event) async* {
    if (event is LoginWithEmailEvent) {
      yield* _loginWithEmail(event);
    } else if (event is ShowError) {
      yield LoginError(message: event.message);
    } else if (event is ShowLoading) {
      yield LoginLoading(loading: event.loading);
    }
  }

  Stream<EmailState> _loginWithEmail(LoginWithEmailEvent event) async* {
    yield LoginLoading(loading: true);
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
      yield LoginError(message: e.message);
    } finally {
      yield LoginLoading(loading: false);
    }
  }
}
