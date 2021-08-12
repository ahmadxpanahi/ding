import 'package:ding/src/data/http/interceptor.dart';
import 'package:ding/src/data/http/rest_client.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/di/inject.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swagger/api.dart';

Future<void> registerApis(GetIt getIt) async{
  final tokenManager = await _tokenManager();
  getIt.registerLazySingleton<TokenManager>(() => tokenManager);

  final interceptor = await _interceptor();
  getIt.registerLazySingleton<AccessTokenInterceptor>(() => interceptor);

  final apiClient = await _apiClient();
  getIt.registerLazySingleton<ApiClient>(() => apiClient);

  getIt.registerLazySingleton<RequestsApi>(() => _requestsApi());
  getIt.registerLazySingleton<EnterLeavesApi>(() => _enterLeavesApi());
  getIt.registerLazySingleton<AccountApi>(() => _accountApi());
  getIt.registerLazySingleton<TokenAuthApi>(() => _tokenAuthApi());
  getIt.registerLazySingleton<DetailedEmployeeReportsApi>(() => _detailedEmployeeReportsApi());
  getIt.registerLazySingleton<SummaryEmployeeReportsApi>(() => _summaryEmployeeReportsApi());
  getIt.registerLazySingleton<ProfileApi>(() => _profileApi());
  getIt.registerLazySingleton<UserClockInOutsApi>(() => _userClockInOutsApi());
}

Future<TokenManager> _tokenManager() async{
  return TokenManager(inject<SharedPreferences>());
}

Future<AccessTokenInterceptor> _interceptor() async{
  return AccessTokenInterceptor(inject<TokenManager>());
}


Future<ApiClient> _apiClient() async{
  return ApiClient(
    basePath: 'https://dinghost.daustany.ir',
    client: RestClient(inject<AccessTokenInterceptor>(),inject<TokenManager>())
  );
}

RequestsApi _requestsApi() => RequestsApi(inject<ApiClient>());

EnterLeavesApi _enterLeavesApi() => EnterLeavesApi(inject<ApiClient>());

AccountApi _accountApi() => AccountApi(inject<ApiClient>());

ProfileApi _profileApi() => ProfileApi(inject<ApiClient>());

TokenAuthApi _tokenAuthApi() => TokenAuthApi(inject<ApiClient>());

DetailedEmployeeReportsApi _detailedEmployeeReportsApi() => DetailedEmployeeReportsApi(inject<ApiClient>());

SummaryEmployeeReportsApi _summaryEmployeeReportsApi() => SummaryEmployeeReportsApi(inject<ApiClient>());

UserClockInOutsApi _userClockInOutsApi() => UserClockInOutsApi(inject<ApiClient>());