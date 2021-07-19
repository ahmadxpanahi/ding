# swagger.api.TokenAuthApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiTokenauthAuthenticatePost**](TokenAuthApi.md#apiTokenauthAuthenticatePost) | **POST** /api/TokenAuth/Authenticate | ApiTokenauthAuthenticatePost
[**apiTokenauthAuthenticatebytenantPost**](TokenAuthApi.md#apiTokenauthAuthenticatebytenantPost) | **POST** /api/TokenAuth/AuthenticateByTenant | ApiTokenauthAuthenticatebytenantPost
[**apiTokenauthDelegatedimpersonatedauthenticatePost**](TokenAuthApi.md#apiTokenauthDelegatedimpersonatedauthenticatePost) | **POST** /api/TokenAuth/DelegatedImpersonatedAuthenticate | ApiTokenauthDelegatedimpersonatedauthenticatePost
[**apiTokenauthExternalauthenticatePost**](TokenAuthApi.md#apiTokenauthExternalauthenticatePost) | **POST** /api/TokenAuth/ExternalAuthenticate | ApiTokenauthExternalauthenticatePost
[**apiTokenauthGetexternalauthenticationprovidersGet**](TokenAuthApi.md#apiTokenauthGetexternalauthenticationprovidersGet) | **GET** /api/TokenAuth/GetExternalAuthenticationProviders | ApiTokenauthGetexternalauthenticationprovidersGet
[**apiTokenauthImpersonatedauthenticatePost**](TokenAuthApi.md#apiTokenauthImpersonatedauthenticatePost) | **POST** /api/TokenAuth/ImpersonatedAuthenticate | ApiTokenauthImpersonatedauthenticatePost
[**apiTokenauthLinkedaccountauthenticatePost**](TokenAuthApi.md#apiTokenauthLinkedaccountauthenticatePost) | **POST** /api/TokenAuth/LinkedAccountAuthenticate | ApiTokenauthLinkedaccountauthenticatePost
[**apiTokenauthLogoutGet**](TokenAuthApi.md#apiTokenauthLogoutGet) | **GET** /api/TokenAuth/LogOut | ApiTokenauthLogoutGet
[**apiTokenauthRefreshtokenPost**](TokenAuthApi.md#apiTokenauthRefreshtokenPost) | **POST** /api/TokenAuth/RefreshToken | ApiTokenauthRefreshtokenPost
[**apiTokenauthSendtwofactorauthcodePost**](TokenAuthApi.md#apiTokenauthSendtwofactorauthcodePost) | **POST** /api/TokenAuth/SendTwoFactorAuthCode | ApiTokenauthSendtwofactorauthcodePost
[**apiTokenauthTestnotificationGet**](TokenAuthApi.md#apiTokenauthTestnotificationGet) | **GET** /api/TokenAuth/TestNotification | ApiTokenauthTestnotificationGet


# **apiTokenauthAuthenticatePost**
> AuthenticateResultModel apiTokenauthAuthenticatePost(body)

ApiTokenauthAuthenticatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();
var body = new AuthenticateModel(); // AuthenticateModel | 

try { 
    var result = api_instance.apiTokenauthAuthenticatePost(body);
    print(result);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthAuthenticatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuthenticateModel**](AuthenticateModel.md)|  | [optional] 

### Return type

[**AuthenticateResultModel**](AuthenticateResultModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthAuthenticatebytenantPost**
> AuthenticateResultModel apiTokenauthAuthenticatebytenantPost(body)

ApiTokenauthAuthenticatebytenantPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();
var body = new AuthenticateByTenantModel(); // AuthenticateByTenantModel | 

try { 
    var result = api_instance.apiTokenauthAuthenticatebytenantPost(body);
    print(result);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthAuthenticatebytenantPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuthenticateByTenantModel**](AuthenticateByTenantModel.md)|  | [optional] 

### Return type

[**AuthenticateResultModel**](AuthenticateResultModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthDelegatedimpersonatedauthenticatePost**
> ImpersonatedAuthenticateResultModel apiTokenauthDelegatedimpersonatedauthenticatePost(userDelegationId, impersonationToken)

ApiTokenauthDelegatedimpersonatedauthenticatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();
var userDelegationId = 789; // int | 
var impersonationToken = impersonationToken_example; // String | 

try { 
    var result = api_instance.apiTokenauthDelegatedimpersonatedauthenticatePost(userDelegationId, impersonationToken);
    print(result);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthDelegatedimpersonatedauthenticatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userDelegationId** | **int**|  | [optional] 
 **impersonationToken** | **String**|  | [optional] 

### Return type

[**ImpersonatedAuthenticateResultModel**](ImpersonatedAuthenticateResultModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthExternalauthenticatePost**
> ExternalAuthenticateResultModel apiTokenauthExternalauthenticatePost(body)

ApiTokenauthExternalauthenticatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();
var body = new ExternalAuthenticateModel(); // ExternalAuthenticateModel | 

try { 
    var result = api_instance.apiTokenauthExternalauthenticatePost(body);
    print(result);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthExternalauthenticatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ExternalAuthenticateModel**](ExternalAuthenticateModel.md)|  | [optional] 

### Return type

[**ExternalAuthenticateResultModel**](ExternalAuthenticateResultModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthGetexternalauthenticationprovidersGet**
> List<ExternalLoginProviderInfoModel?> apiTokenauthGetexternalauthenticationprovidersGet()

ApiTokenauthGetexternalauthenticationprovidersGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();

try { 
    var result = api_instance.apiTokenauthGetexternalauthenticationprovidersGet();
    print(result);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthGetexternalauthenticationprovidersGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ExternalLoginProviderInfoModel>**](ExternalLoginProviderInfoModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthImpersonatedauthenticatePost**
> ImpersonatedAuthenticateResultModel apiTokenauthImpersonatedauthenticatePost(impersonationToken)

ApiTokenauthImpersonatedauthenticatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();
var impersonationToken = impersonationToken_example; // String | 

try { 
    var result = api_instance.apiTokenauthImpersonatedauthenticatePost(impersonationToken);
    print(result);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthImpersonatedauthenticatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **impersonationToken** | **String**|  | [optional] 

### Return type

[**ImpersonatedAuthenticateResultModel**](ImpersonatedAuthenticateResultModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthLinkedaccountauthenticatePost**
> SwitchedAccountAuthenticateResultModel apiTokenauthLinkedaccountauthenticatePost(switchAccountToken)

ApiTokenauthLinkedaccountauthenticatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();
var switchAccountToken = switchAccountToken_example; // String | 

try { 
    var result = api_instance.apiTokenauthLinkedaccountauthenticatePost(switchAccountToken);
    print(result);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthLinkedaccountauthenticatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **switchAccountToken** | **String**|  | [optional] 

### Return type

[**SwitchedAccountAuthenticateResultModel**](SwitchedAccountAuthenticateResultModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthLogoutGet**
?> apiTokenauthLogoutGet()

ApiTokenauthLogoutGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();

try { 
    api_instance.apiTokenauthLogoutGet();
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthLogoutGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthRefreshtokenPost**
> RefreshTokenResult apiTokenauthRefreshtokenPost(refreshToken)

ApiTokenauthRefreshtokenPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();
var refreshToken = refreshToken_example; // String | 

try { 
    var result = api_instance.apiTokenauthRefreshtokenPost(refreshToken);
    print(result);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthRefreshtokenPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshToken** | **String**|  | [optional] 

### Return type

[**RefreshTokenResult**](RefreshTokenResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthSendtwofactorauthcodePost**
?> apiTokenauthSendtwofactorauthcodePost(body)

ApiTokenauthSendtwofactorauthcodePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();
var body = new SendTwoFactorAuthCodeModel(); // SendTwoFactorAuthCodeModel | 

try { 
    api_instance.apiTokenauthSendtwofactorauthcodePost(body);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthSendtwofactorauthcodePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendTwoFactorAuthCodeModel**](SendTwoFactorAuthCodeModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTokenauthTestnotificationGet**
?> apiTokenauthTestnotificationGet(message, severity)

ApiTokenauthTestnotificationGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenAuthApi();
var message = message_example; // String | 
var severity = severity_example; // String | 

try { 
    api_instance.apiTokenauthTestnotificationGet(message, severity);
} catch (e) {
    print("Exception when calling TokenAuthApi->apiTokenauthTestnotificationGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message** | **String**|  | [optional] 
 **severity** | **String**|  | [optional] [default to info]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

