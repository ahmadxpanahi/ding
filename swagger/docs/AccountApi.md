# swagger.api.AccountApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppAccountActivateemailPost**](AccountApi.md#apiServicesAppAccountActivateemailPost) | **POST** /api/services/app/Account/ActivateEmail | ApiServicesAppAccountActivateemailPost
[**apiServicesAppAccountBacktoimpersonatorPost**](AccountApi.md#apiServicesAppAccountBacktoimpersonatorPost) | **POST** /api/services/app/Account/BackToImpersonator | ApiServicesAppAccountBacktoimpersonatorPost
[**apiServicesAppAccountDelegatedimpersonatePost**](AccountApi.md#apiServicesAppAccountDelegatedimpersonatePost) | **POST** /api/services/app/Account/DelegatedImpersonate | ApiServicesAppAccountDelegatedimpersonatePost
[**apiServicesAppAccountGetprofileGet**](AccountApi.md#apiServicesAppAccountGetprofileGet) | **GET** /api/services/app/Account/GetProfile | ApiServicesAppAccountGetprofileGet
[**apiServicesAppAccountImpersonatePost**](AccountApi.md#apiServicesAppAccountImpersonatePost) | **POST** /api/services/app/Account/Impersonate | ApiServicesAppAccountImpersonatePost
[**apiServicesAppAccountIstenantavailablePost**](AccountApi.md#apiServicesAppAccountIstenantavailablePost) | **POST** /api/services/app/Account/IsTenantAvailable | ApiServicesAppAccountIstenantavailablePost
[**apiServicesAppAccountRegisterPost**](AccountApi.md#apiServicesAppAccountRegisterPost) | **POST** /api/services/app/Account/Register | ApiServicesAppAccountRegisterPost
[**apiServicesAppAccountResetpasswordPost**](AccountApi.md#apiServicesAppAccountResetpasswordPost) | **POST** /api/services/app/Account/ResetPassword | ApiServicesAppAccountResetpasswordPost
[**apiServicesAppAccountResolvetenantidPost**](AccountApi.md#apiServicesAppAccountResolvetenantidPost) | **POST** /api/services/app/Account/ResolveTenantId | ApiServicesAppAccountResolvetenantidPost
[**apiServicesAppAccountSaveprofilePost**](AccountApi.md#apiServicesAppAccountSaveprofilePost) | **POST** /api/services/app/Account/SaveProfile | ApiServicesAppAccountSaveprofilePost
[**apiServicesAppAccountSendemailactivationlinkPost**](AccountApi.md#apiServicesAppAccountSendemailactivationlinkPost) | **POST** /api/services/app/Account/SendEmailActivationLink | ApiServicesAppAccountSendemailactivationlinkPost
[**apiServicesAppAccountSendpasswordresetcodePost**](AccountApi.md#apiServicesAppAccountSendpasswordresetcodePost) | **POST** /api/services/app/Account/SendPasswordResetCode | ApiServicesAppAccountSendpasswordresetcodePost
[**apiServicesAppAccountSendverificationsmsPost**](AccountApi.md#apiServicesAppAccountSendverificationsmsPost) | **POST** /api/services/app/Account/SendVerificationSms | ApiServicesAppAccountSendverificationsmsPost
[**apiServicesAppAccountSwitchtolinkedaccountPost**](AccountApi.md#apiServicesAppAccountSwitchtolinkedaccountPost) | **POST** /api/services/app/Account/SwitchToLinkedAccount | ApiServicesAppAccountSwitchtolinkedaccountPost
[**apiServicesAppAccountVerifyregistertokenPost**](AccountApi.md#apiServicesAppAccountVerifyregistertokenPost) | **POST** /api/services/app/Account/VerifyRegisterToken | ApiServicesAppAccountVerifyregistertokenPost
[**apiServicesAppAccountVerifysmscodePost**](AccountApi.md#apiServicesAppAccountVerifysmscodePost) | **POST** /api/services/app/Account/VerifySmsCode | ApiServicesAppAccountVerifysmscodePost


# **apiServicesAppAccountActivateemailPost**
> apiServicesAppAccountActivateemailPost(body)

ApiServicesAppAccountActivateemailPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new ActivateEmailInput(); // ActivateEmailInput | 

try { 
    api_instance.apiServicesAppAccountActivateemailPost(body);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountActivateemailPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ActivateEmailInput**](ActivateEmailInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountBacktoimpersonatorPost**
> ImpersonateOutput apiServicesAppAccountBacktoimpersonatorPost()

ApiServicesAppAccountBacktoimpersonatorPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();

try { 
    var result = api_instance.apiServicesAppAccountBacktoimpersonatorPost();
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountBacktoimpersonatorPost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ImpersonateOutput**](ImpersonateOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountDelegatedimpersonatePost**
> ImpersonateOutput apiServicesAppAccountDelegatedimpersonatePost(body)

ApiServicesAppAccountDelegatedimpersonatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new DelegatedImpersonateInput(); // DelegatedImpersonateInput | 

try { 
    var result = api_instance.apiServicesAppAccountDelegatedimpersonatePost(body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountDelegatedimpersonatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DelegatedImpersonateInput**](DelegatedImpersonateInput.md)|  | [optional] 

### Return type

[**ImpersonateOutput**](ImpersonateOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountGetprofileGet**
> UserEditDto apiServicesAppAccountGetprofileGet(userId)

ApiServicesAppAccountGetprofileGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var userId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppAccountGetprofileGet(userId);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountGetprofileGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 

### Return type

[**UserEditDto**](UserEditDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountImpersonatePost**
> ImpersonateOutput apiServicesAppAccountImpersonatePost(body)

ApiServicesAppAccountImpersonatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new ImpersonateInput(); // ImpersonateInput | 

try { 
    var result = api_instance.apiServicesAppAccountImpersonatePost(body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountImpersonatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ImpersonateInput**](ImpersonateInput.md)|  | [optional] 

### Return type

[**ImpersonateOutput**](ImpersonateOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountIstenantavailablePost**
> IsTenantAvailableOutput apiServicesAppAccountIstenantavailablePost(body)

ApiServicesAppAccountIstenantavailablePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new IsTenantAvailableInput(); // IsTenantAvailableInput | 

try { 
    var result = api_instance.apiServicesAppAccountIstenantavailablePost(body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountIstenantavailablePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IsTenantAvailableInput**](IsTenantAvailableInput.md)|  | [optional] 

### Return type

[**IsTenantAvailableOutput**](IsTenantAvailableOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountRegisterPost**
> RegisterOutput apiServicesAppAccountRegisterPost(body)

ApiServicesAppAccountRegisterPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new RegisterInput(); // RegisterInput | 

try { 
    var result = api_instance.apiServicesAppAccountRegisterPost(body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountRegisterPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegisterInput**](RegisterInput.md)|  | [optional] 

### Return type

[**RegisterOutput**](RegisterOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountResetpasswordPost**
> ResetPasswordOutput apiServicesAppAccountResetpasswordPost(body)

ApiServicesAppAccountResetpasswordPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new ResetPasswordInput(); // ResetPasswordInput | 

try { 
    var result = api_instance.apiServicesAppAccountResetpasswordPost(body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountResetpasswordPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ResetPasswordInput**](ResetPasswordInput.md)|  | [optional] 

### Return type

[**ResetPasswordOutput**](ResetPasswordOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountResolvetenantidPost**
> int apiServicesAppAccountResolvetenantidPost(body)

ApiServicesAppAccountResolvetenantidPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new ResolveTenantIdInput(); // ResolveTenantIdInput | 

try { 
    var result = api_instance.apiServicesAppAccountResolvetenantidPost(body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountResolvetenantidPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ResolveTenantIdInput**](ResolveTenantIdInput.md)|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountSaveprofilePost**
> apiServicesAppAccountSaveprofilePost(body)

ApiServicesAppAccountSaveprofilePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new UserEditDto(); // UserEditDto | 

try { 
    api_instance.apiServicesAppAccountSaveprofilePost(body);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountSaveprofilePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserEditDto**](UserEditDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountSendemailactivationlinkPost**
> apiServicesAppAccountSendemailactivationlinkPost(body)

ApiServicesAppAccountSendemailactivationlinkPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new SendEmailActivationLinkInput(); // SendEmailActivationLinkInput | 

try { 
    api_instance.apiServicesAppAccountSendemailactivationlinkPost(body);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountSendemailactivationlinkPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendEmailActivationLinkInput**](SendEmailActivationLinkInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountSendpasswordresetcodePost**
> apiServicesAppAccountSendpasswordresetcodePost(body)

ApiServicesAppAccountSendpasswordresetcodePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new SendPasswordResetCodeInput(); // SendPasswordResetCodeInput | 

try { 
    api_instance.apiServicesAppAccountSendpasswordresetcodePost(body);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountSendpasswordresetcodePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendPasswordResetCodeInput**](SendPasswordResetCodeInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountSendverificationsmsPost**
> apiServicesAppAccountSendverificationsmsPost(body)

ApiServicesAppAccountSendverificationsmsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new SendVerificationSmsInputDto(); // SendVerificationSmsInputDto | 

try { 
    api_instance.apiServicesAppAccountSendverificationsmsPost(body);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountSendverificationsmsPost: $e\n");
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

# **apiServicesAppAccountSwitchtolinkedaccountPost**
> SwitchToLinkedAccountOutput apiServicesAppAccountSwitchtolinkedaccountPost(body)

ApiServicesAppAccountSwitchtolinkedaccountPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new SwitchToLinkedAccountInput(); // SwitchToLinkedAccountInput | 

try { 
    var result = api_instance.apiServicesAppAccountSwitchtolinkedaccountPost(body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountSwitchtolinkedaccountPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SwitchToLinkedAccountInput**](SwitchToLinkedAccountInput.md)|  | [optional] 

### Return type

[**SwitchToLinkedAccountOutput**](SwitchToLinkedAccountOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountVerifyregistertokenPost**
> String apiServicesAppAccountVerifyregistertokenPost(token)

ApiServicesAppAccountVerifyregistertokenPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var token = token_example; // String | 

try { 
    var result = api_instance.apiServicesAppAccountVerifyregistertokenPost(token);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountVerifyregistertokenPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAccountVerifysmscodePost**
> String apiServicesAppAccountVerifysmscodePost(body)

ApiServicesAppAccountVerifysmscodePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountApi();
var body = new VerifySmsCodeInputDto(); // VerifySmsCodeInputDto | 

try { 
    var result = api_instance.apiServicesAppAccountVerifysmscodePost(body);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->apiServicesAppAccountVerifysmscodePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VerifySmsCodeInputDto**](VerifySmsCodeInputDto.md)|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

