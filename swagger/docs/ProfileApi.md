# swagger.api.ProfileApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppProfileChangelanguagePost**](ProfileApi.md#apiServicesAppProfileChangelanguagePost) | **POST** /api/services/app/Profile/ChangeLanguage | ApiServicesAppProfileChangelanguagePost
[**apiServicesAppProfileChangepasswordPost**](ProfileApi.md#apiServicesAppProfileChangepasswordPost) | **POST** /api/services/app/Profile/ChangePassword | ApiServicesAppProfileChangepasswordPost
[**apiServicesAppProfileDisablegoogleauthenticatorPost**](ProfileApi.md#apiServicesAppProfileDisablegoogleauthenticatorPost) | **POST** /api/services/app/Profile/DisableGoogleAuthenticator | ApiServicesAppProfileDisablegoogleauthenticatorPost
[**apiServicesAppProfileGetcurrentuserprofileforeditGet**](ProfileApi.md#apiServicesAppProfileGetcurrentuserprofileforeditGet) | **GET** /api/services/app/Profile/GetCurrentUserProfileForEdit | ApiServicesAppProfileGetcurrentuserprofileforeditGet
[**apiServicesAppProfileGetfriendprofilepictureGet**](ProfileApi.md#apiServicesAppProfileGetfriendprofilepictureGet) | **GET** /api/services/app/Profile/GetFriendProfilePicture | ApiServicesAppProfileGetfriendprofilepictureGet
[**apiServicesAppProfileGetpasswordcomplexitysettingGet**](ProfileApi.md#apiServicesAppProfileGetpasswordcomplexitysettingGet) | **GET** /api/services/app/Profile/GetPasswordComplexitySetting | ApiServicesAppProfileGetpasswordcomplexitysettingGet
[**apiServicesAppProfileGetprofilepictureGet**](ProfileApi.md#apiServicesAppProfileGetprofilepictureGet) | **GET** /api/services/app/Profile/GetProfilePicture | ApiServicesAppProfileGetprofilepictureGet
[**apiServicesAppProfileGetprofilepicturebyidGet**](ProfileApi.md#apiServicesAppProfileGetprofilepicturebyidGet) | **GET** /api/services/app/Profile/GetProfilePictureById | ApiServicesAppProfileGetprofilepicturebyidGet
[**apiServicesAppProfileGetprofilepicturebyuserGet**](ProfileApi.md#apiServicesAppProfileGetprofilepicturebyuserGet) | **GET** /api/services/app/Profile/GetProfilePictureByUser | ApiServicesAppProfileGetprofilepicturebyuserGet
[**apiServicesAppProfileGetprofilepicturebyusernameGet**](ProfileApi.md#apiServicesAppProfileGetprofilepicturebyusernameGet) | **GET** /api/services/app/Profile/GetProfilePictureByUserName | ApiServicesAppProfileGetprofilepicturebyusernameGet
[**apiServicesAppProfilePreparecollecteddataPost**](ProfileApi.md#apiServicesAppProfilePreparecollecteddataPost) | **POST** /api/services/app/Profile/PrepareCollectedData | ApiServicesAppProfilePreparecollecteddataPost
[**apiServicesAppProfileSendverificationsmsPost**](ProfileApi.md#apiServicesAppProfileSendverificationsmsPost) | **POST** /api/services/app/Profile/SendVerificationSms | ApiServicesAppProfileSendverificationsmsPost
[**apiServicesAppProfileTransferandupdateprofilepicturePost**](ProfileApi.md#apiServicesAppProfileTransferandupdateprofilepicturePost) | **POST** /api/services/app/Profile/TransferAndUpdateProfilePicture | ApiServicesAppProfileTransferandupdateprofilepicturePost
[**apiServicesAppProfileUpdatecurrentuserprofilePut**](ProfileApi.md#apiServicesAppProfileUpdatecurrentuserprofilePut) | **PUT** /api/services/app/Profile/UpdateCurrentUserProfile | ApiServicesAppProfileUpdatecurrentuserprofilePut
[**apiServicesAppProfileUpdategoogleauthenticatorkeyPut**](ProfileApi.md#apiServicesAppProfileUpdategoogleauthenticatorkeyPut) | **PUT** /api/services/app/Profile/UpdateGoogleAuthenticatorKey | ApiServicesAppProfileUpdategoogleauthenticatorkeyPut
[**apiServicesAppProfileUpdateprofilepicturePut**](ProfileApi.md#apiServicesAppProfileUpdateprofilepicturePut) | **PUT** /api/services/app/Profile/UpdateProfilePicture | ApiServicesAppProfileUpdateprofilepicturePut
[**apiServicesAppProfileVerifysmscodePost**](ProfileApi.md#apiServicesAppProfileVerifysmscodePost) | **POST** /api/services/app/Profile/VerifySmsCode | ApiServicesAppProfileVerifysmscodePost


# **apiServicesAppProfileChangelanguagePost**
?> apiServicesAppProfileChangelanguagePost(body)

ApiServicesAppProfileChangelanguagePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var body = new ChangeUserLanguageDto(); // ChangeUserLanguageDto | 

try { 
    api_instance.apiServicesAppProfileChangelanguagePost(body);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileChangelanguagePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ChangeUserLanguageDto**](ChangeUserLanguageDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileChangepasswordPost**
?> apiServicesAppProfileChangepasswordPost(body)

ApiServicesAppProfileChangepasswordPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var body = new ChangePasswordInput(); // ChangePasswordInput | 

try { 
    api_instance.apiServicesAppProfileChangepasswordPost(body);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileChangepasswordPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ChangePasswordInput**](ChangePasswordInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileDisablegoogleauthenticatorPost**
?> apiServicesAppProfileDisablegoogleauthenticatorPost()

ApiServicesAppProfileDisablegoogleauthenticatorPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();

try { 
    api_instance.apiServicesAppProfileDisablegoogleauthenticatorPost();
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileDisablegoogleauthenticatorPost: $e\n");
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

# **apiServicesAppProfileGetcurrentuserprofileforeditGet**
> CurrentUserProfileEditDto apiServicesAppProfileGetcurrentuserprofileforeditGet()

ApiServicesAppProfileGetcurrentuserprofileforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();

try { 
    var result = api_instance.apiServicesAppProfileGetcurrentuserprofileforeditGet();
    print(result);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileGetcurrentuserprofileforeditGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrentUserProfileEditDto**](CurrentUserProfileEditDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileGetfriendprofilepictureGet**
> GetProfilePictureOutput apiServicesAppProfileGetfriendprofilepictureGet(userId, tenantId)

ApiServicesAppProfileGetfriendprofilepictureGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var userId = 789; // int | 
var tenantId = 56; // int | 

try { 
    var result = api_instance.apiServicesAppProfileGetfriendprofilepictureGet(userId, tenantId);
    print(result);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileGetfriendprofilepictureGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 
 **tenantId** | **int**|  | [optional] 

### Return type

[**GetProfilePictureOutput**](GetProfilePictureOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileGetpasswordcomplexitysettingGet**
> GetPasswordComplexitySettingOutput apiServicesAppProfileGetpasswordcomplexitysettingGet()

ApiServicesAppProfileGetpasswordcomplexitysettingGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();

try { 
    var result = api_instance.apiServicesAppProfileGetpasswordcomplexitysettingGet();
    print(result);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileGetpasswordcomplexitysettingGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetPasswordComplexitySettingOutput**](GetPasswordComplexitySettingOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileGetprofilepictureGet**
> GetProfilePictureOutput apiServicesAppProfileGetprofilepictureGet()

ApiServicesAppProfileGetprofilepictureGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();

try { 
    var result = api_instance.apiServicesAppProfileGetprofilepictureGet();
    print(result);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileGetprofilepictureGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetProfilePictureOutput**](GetProfilePictureOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileGetprofilepicturebyidGet**
> GetProfilePictureOutput apiServicesAppProfileGetprofilepicturebyidGet(profilePictureId)

ApiServicesAppProfileGetprofilepicturebyidGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var profilePictureId = ; // String | 

try { 
    var result = api_instance.apiServicesAppProfileGetprofilepicturebyidGet(profilePictureId);
    print(result);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileGetprofilepicturebyidGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profilePictureId** | [**String**](.md)|  | [optional] 

### Return type

[**GetProfilePictureOutput**](GetProfilePictureOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileGetprofilepicturebyuserGet**
> GetProfilePictureOutput apiServicesAppProfileGetprofilepicturebyuserGet(userId)

ApiServicesAppProfileGetprofilepicturebyuserGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var userId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppProfileGetprofilepicturebyuserGet(userId);
    print(result);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileGetprofilepicturebyuserGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 

### Return type

[**GetProfilePictureOutput**](GetProfilePictureOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileGetprofilepicturebyusernameGet**
> GetProfilePictureOutput apiServicesAppProfileGetprofilepicturebyusernameGet(username)

ApiServicesAppProfileGetprofilepicturebyusernameGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var username = username_example; // String | 

try { 
    var result = api_instance.apiServicesAppProfileGetprofilepicturebyusernameGet(username);
    print(result);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileGetprofilepicturebyusernameGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | [optional] 

### Return type

[**GetProfilePictureOutput**](GetProfilePictureOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfilePreparecollecteddataPost**
?> apiServicesAppProfilePreparecollecteddataPost()

ApiServicesAppProfilePreparecollecteddataPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();

try { 
    api_instance.apiServicesAppProfilePreparecollecteddataPost();
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfilePreparecollecteddataPost: $e\n");
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

# **apiServicesAppProfileSendverificationsmsPost**
?> apiServicesAppProfileSendverificationsmsPost(body)

ApiServicesAppProfileSendverificationsmsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var body = new SendVerificationSmsInputDto(); // SendVerificationSmsInputDto | 

try { 
    api_instance.apiServicesAppProfileSendverificationsmsPost(body);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileSendverificationsmsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendVerificationSmsInputDto**](SendVerificationSmsInputDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileTransferandupdateprofilepicturePost**
?> apiServicesAppProfileTransferandupdateprofilepicturePost(body)

ApiServicesAppProfileTransferandupdateprofilepicturePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var body = new UpdateProfilePictureByUserInput(); // UpdateProfilePictureByUserInput | 

try { 
    api_instance.apiServicesAppProfileTransferandupdateprofilepicturePost(body);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileTransferandupdateprofilepicturePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateProfilePictureByUserInput**](UpdateProfilePictureByUserInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileUpdatecurrentuserprofilePut**
?> apiServicesAppProfileUpdatecurrentuserprofilePut(body)

ApiServicesAppProfileUpdatecurrentuserprofilePut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var body = new CurrentUserProfileEditDto(); // CurrentUserProfileEditDto | 

try { 
    api_instance.apiServicesAppProfileUpdatecurrentuserprofilePut(body);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileUpdatecurrentuserprofilePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CurrentUserProfileEditDto**](CurrentUserProfileEditDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileUpdategoogleauthenticatorkeyPut**
> UpdateGoogleAuthenticatorKeyOutput apiServicesAppProfileUpdategoogleauthenticatorkeyPut()

ApiServicesAppProfileUpdategoogleauthenticatorkeyPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();

try { 
    var result = api_instance.apiServicesAppProfileUpdategoogleauthenticatorkeyPut();
    print(result);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileUpdategoogleauthenticatorkeyPut: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UpdateGoogleAuthenticatorKeyOutput**](UpdateGoogleAuthenticatorKeyOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileUpdateprofilepicturePut**
?> apiServicesAppProfileUpdateprofilepicturePut(body)

ApiServicesAppProfileUpdateprofilepicturePut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var body = new UpdateProfilePictureInput(); // UpdateProfilePictureInput | 

try { 
    api_instance.apiServicesAppProfileUpdateprofilepicturePut(body);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileUpdateprofilepicturePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateProfilePictureInput**](UpdateProfilePictureInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppProfileVerifysmscodePost**
?> apiServicesAppProfileVerifysmscodePost(body)

ApiServicesAppProfileVerifysmscodePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProfileApi();
var body = new VerifySmsCodeInputDto(); // VerifySmsCodeInputDto | 

try { 
    api_instance.apiServicesAppProfileVerifysmscodePost(body);
} catch (e) {
    print("Exception when calling ProfileApi->apiServicesAppProfileVerifysmscodePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VerifySmsCodeInputDto**](VerifySmsCodeInputDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

