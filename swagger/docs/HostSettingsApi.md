# swagger.api.HostSettingsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppHostsettingsGetallsettingsGet**](HostSettingsApi.md#apiServicesAppHostsettingsGetallsettingsGet) | **GET** /api/services/app/HostSettings/GetAllSettings | ApiServicesAppHostsettingsGetallsettingsGet
[**apiServicesAppHostsettingsGetenabledsocialloginsettingsGet**](HostSettingsApi.md#apiServicesAppHostsettingsGetenabledsocialloginsettingsGet) | **GET** /api/services/app/HostSettings/GetEnabledSocialLoginSettings | ApiServicesAppHostsettingsGetenabledsocialloginsettingsGet
[**apiServicesAppHostsettingsSendtestemailPost**](HostSettingsApi.md#apiServicesAppHostsettingsSendtestemailPost) | **POST** /api/services/app/HostSettings/SendTestEmail | ApiServicesAppHostsettingsSendtestemailPost
[**apiServicesAppHostsettingsUpdateallsettingsPut**](HostSettingsApi.md#apiServicesAppHostsettingsUpdateallsettingsPut) | **PUT** /api/services/app/HostSettings/UpdateAllSettings | ApiServicesAppHostsettingsUpdateallsettingsPut


# **apiServicesAppHostsettingsGetallsettingsGet**
> HostSettingsEditDto apiServicesAppHostsettingsGetallsettingsGet()

ApiServicesAppHostsettingsGetallsettingsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new HostSettingsApi();

try { 
    var result = api_instance.apiServicesAppHostsettingsGetallsettingsGet();
    print(result);
} catch (e) {
    print("Exception when calling HostSettingsApi->apiServicesAppHostsettingsGetallsettingsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HostSettingsEditDto**](HostSettingsEditDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppHostsettingsGetenabledsocialloginsettingsGet**
> ExternalLoginSettingsDto apiServicesAppHostsettingsGetenabledsocialloginsettingsGet()

ApiServicesAppHostsettingsGetenabledsocialloginsettingsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new HostSettingsApi();

try { 
    var result = api_instance.apiServicesAppHostsettingsGetenabledsocialloginsettingsGet();
    print(result);
} catch (e) {
    print("Exception when calling HostSettingsApi->apiServicesAppHostsettingsGetenabledsocialloginsettingsGet: $e\n");
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

# **apiServicesAppHostsettingsSendtestemailPost**
?> apiServicesAppHostsettingsSendtestemailPost(body)

ApiServicesAppHostsettingsSendtestemailPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new HostSettingsApi();
var body = new SendTestEmailInput(); // SendTestEmailInput | 

try { 
    api_instance.apiServicesAppHostsettingsSendtestemailPost(body);
} catch (e) {
    print("Exception when calling HostSettingsApi->apiServicesAppHostsettingsSendtestemailPost: $e\n");
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

# **apiServicesAppHostsettingsUpdateallsettingsPut**
?> apiServicesAppHostsettingsUpdateallsettingsPut(body)

ApiServicesAppHostsettingsUpdateallsettingsPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new HostSettingsApi();
var body = new HostSettingsEditDto(); // HostSettingsEditDto | 

try { 
    api_instance.apiServicesAppHostsettingsUpdateallsettingsPut(body);
} catch (e) {
    print("Exception when calling HostSettingsApi->apiServicesAppHostsettingsUpdateallsettingsPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**HostSettingsEditDto**](HostSettingsEditDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

