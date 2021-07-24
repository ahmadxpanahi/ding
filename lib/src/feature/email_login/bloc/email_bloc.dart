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
  TokenAuthApi? tokenAuthApi;
  TokenManager? tokenManager;

  EmailBloc() : super(EmailInitialState()) {
    Future.delayed(Duration(milliseconds: 0), () async {
      var sp = await SharedPreferences.getInstance();
      tokenManager = TokenManager(sp);
      var interceptor = AccessTokenInterceptor(tokenManager!);
      var api = ApiClient(basePath: 'https://dinghost.daustany.ir',
          client: RestClient(interceptor, tokenManager!));
      tokenAuthApi = TokenAuthApi(api);
    });
  }

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
      var response = await tokenAuthApi?.apiTokenauthAuthenticatebytenantPost(
        body: AuthenticateByTenantModel()
          ..tenancyName = event.tenancyName
          ..userNameOrEmailAddress = event.userName
          ..password = event.password
          ..rememberClient = true
          ..twoFactorRememberClientToken = ''
          ..twoFactorVerificationCode = ''
          ..singleSignIn = true
          ..returnUrl = ''
          ..captchaResponse = ''
      );
      await tokenManager?.setAccessToken(response?.accessToken ?? "");
      yield LoginWithEmailSuccessful(response);
    } on ApiException catch (e) {
      yield LoginError(message: e.message);
    } finally {
      yield LoginLoading(loading: false);
    }
  }
}