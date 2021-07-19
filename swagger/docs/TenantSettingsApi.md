# swagger.api.TenantSettingsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppTenantsettingsClearcustomcssPost**](TenantSettingsApi.md#apiServicesAppTenantsettingsClearcustomcssPost) | **POST** /api/services/app/TenantSettings/ClearCustomCss | ApiServicesAppTenantsettingsClearcustomcssPost
[**apiServicesAppTenantsettingsClearlogoPost**](TenantSettingsApi.md#apiServicesAppTenantsettingsClearlogoPost) | **POST** /api/services/app/TenantSettings/ClearLogo | ApiServicesAppTenantsettingsClearlogoPost
[**apiServicesAppTenantsettingsGetallsettingsGet**](TenantSettingsApi.md#apiServicesAppTenantsettingsGetallsettingsGet) | **GET** /api/services/app/TenantSettings/GetAllSettings | ApiServicesAppTenantsettingsGetallsettingsGet
[**apiServicesAppTenantsettingsGetenabledsocialloginsettingsGet**](TenantSettingsApi.md#apiServicesAppTenantsettingsGetenabledsocialloginsettingsGet) | **GET** /api/services/app/TenantSettings/GetEnabledSocialLoginSettings | ApiServicesAppTenantsettingsGetenabledsocialloginsettingsGet
[**apiServicesAppTenantsettingsSendtestemailPost**](TenantSettingsApi.md#apiServicesAppTenantsettingsSendtestemailPost) | **POST** /api/services/app/TenantSettings/SendTestEmail | ApiServicesAppTenantsettingsSendtestemailPost
[**apiServicesAppTenantsettingsUpdateallsettingsPut**](TenantSettingsApi.md#apiServicesAppTenantsettingsUpdateallsettingsPut) | **PUT** /api/services/app/TenantSettings/UpdateAllSettings | ApiServicesAppTenantsettingsUpdateallsettingsPut


# **apiServicesAppTenantsettingsClearcustomcssPost**
> apiServicesAppTenantsettingsClearcustomcssPost()

ApiServicesAppTenantsettingsClearcustomcssPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantSettingsApi();

try { 
    api_instance.apiServicesAppTenantsettingsClearcustomcssPost();
} catch (e) {
    print("Exception when calling TenantSettingsApi->apiServicesAppTenantsettingsClearcustomcssPost: $e\n");
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

# **apiServicesAppTenantsettingsClearlogoPost**
> apiServicesAppTenantsettingsClearlogoPost()

ApiServicesAppTenantsettingsClearlogoPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantSettingsApi();

try { 
    api_instance.apiServicesAppTenantsettingsClearlogoPost();
} catch (e) {
    print("Exception when calling TenantSettingsApi->apiServicesAppTenantsettingsClearlogoPost: $e\n");
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

# **apiServicesAppTenantsettingsGetallsettingsGet**
> TenantSettingsEditDto apiServicesAppTenantsettingsGetallsettingsGet()

ApiServicesAppTenantsettingsGetallsettingsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantSettingsApi();

try { 
    var result = api_instance.apiServicesAppTenantsettingsGetallsettingsGet();
    print(result);
} catch (e) {
    print("Exception when calling TenantSettingsApi->apiServicesAppTenantsettingsGetallsettingsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantSettingsEditDto**](TenantSettingsEditDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantsettingsGetenabledsocialloginsettingsGet**
> ExternalLoginSettingsDto apiServicesAppTenantsettingsGetenabledsocialloginsettingsGet()

ApiServicesAppTenantsettingsGetenabledsocialloginsettingsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantSettingsApi();

try { 
    var result = api_instance.apiServicesAppTenantsettingsGetenabledsocialloginsettingsGet();
    print(result);
} catch (e) {
    print("Exception when calling TenantSettingsApi->apiServicesAppTenantsettingsGetenabledsocialloginsettingsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ExternalLoginSettingsDto**](ExternalLoginSettingsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantsettingsSendtestemailPost**
> apiServicesAppTenantsettingsSendtestemailPost(body)

ApiServicesAppTenantsettingsSendtestemailPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantSettingsApi();
var body = new SendTestEmailInput(); // SendTestEmailInput | 

try { 
    api_instance.apiServicesAppTenantsettingsSendtestemailPost(body);
} catch (e) {
    print("Exception when calling TenantSettingsApi->apiServicesAppTenantsettingsSendtestemailPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendTestEmailInput**](SendTestEmailInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantsettingsUpdateallsettingsPut**
> apiServicesAppTenantsettingsUpdateallsettingsPut(body)

ApiServicesAppTenantsettingsUpdateallsettingsPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantSettingsApi();
var body = new TenantSettingsEditDto(); // TenantSettingsEditDto | 

try { 
    api_instance.apiServicesAppTenantsettingsUpdateallsettingsPut(body);
} catch (e) {
    print("Exception when calling TenantSettingsApi->apiServicesAppTenantsettingsUpdateallsettingsPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TenantSettingsEditDto**](TenantSettingsEditDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

