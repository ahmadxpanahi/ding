# swagger.api.UiCustomizationSettingsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppUicustomizationsettingsChangethemewithdefaultvaluesPost**](UiCustomizationSettingsApi.md#apiServicesAppUicustomizationsettingsChangethemewithdefaultvaluesPost) | **POST** /api/services/app/UiCustomizationSettings/ChangeThemeWithDefaultValues | ApiServicesAppUicustomizationsettingsChangethemewithdefaultvaluesPost
[**apiServicesAppUicustomizationsettingsGetuimanagementsettingsGet**](UiCustomizationSettingsApi.md#apiServicesAppUicustomizationsettingsGetuimanagementsettingsGet) | **GET** /api/services/app/UiCustomizationSettings/GetUiManagementSettings | ApiServicesAppUicustomizationsettingsGetuimanagementsettingsGet
[**apiServicesAppUicustomizationsettingsUpdatedefaultuimanagementsettingsPut**](UiCustomizationSettingsApi.md#apiServicesAppUicustomizationsettingsUpdatedefaultuimanagementsettingsPut) | **PUT** /api/services/app/UiCustomizationSettings/UpdateDefaultUiManagementSettings | ApiServicesAppUicustomizationsettingsUpdatedefaultuimanagementsettingsPut
[**apiServicesAppUicustomizationsettingsUpdateuimanagementsettingsPut**](UiCustomizationSettingsApi.md#apiServicesAppUicustomizationsettingsUpdateuimanagementsettingsPut) | **PUT** /api/services/app/UiCustomizationSettings/UpdateUiManagementSettings | ApiServicesAppUicustomizationsettingsUpdateuimanagementsettingsPut
[**apiServicesAppUicustomizationsettingsUsesystemdefaultsettingsPost**](UiCustomizationSettingsApi.md#apiServicesAppUicustomizationsettingsUsesystemdefaultsettingsPost) | **POST** /api/services/app/UiCustomizationSettings/UseSystemDefaultSettings | ApiServicesAppUicustomizationsettingsUsesystemdefaultsettingsPost


# **apiServicesAppUicustomizationsettingsChangethemewithdefaultvaluesPost**
?> apiServicesAppUicustomizationsettingsChangethemewithdefaultvaluesPost(themeName)

ApiServicesAppUicustomizationsettingsChangethemewithdefaultvaluesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UiCustomizationSettingsApi();
var themeName = themeName_example; // String | 

try { 
    api_instance.apiServicesAppUicustomizationsettingsChangethemewithdefaultvaluesPost(themeName);
} catch (e) {
    print("Exception when calling UiCustomizationSettingsApi->apiServicesAppUicustomizationsettingsChangethemewithdefaultvaluesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **themeName** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUicustomizationsettingsGetuimanagementsettingsGet**
> List<ThemeSettingsDto?> apiServicesAppUicustomizationsettingsGetuimanagementsettingsGet()

ApiServicesAppUicustomizationsettingsGetuimanagementsettingsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UiCustomizationSettingsApi();

try { 
    var result = api_instance.apiServicesAppUicustomizationsettingsGetuimanagementsettingsGet();
    print(result);
} catch (e) {
    print("Exception when calling UiCustomizationSettingsApi->apiServicesAppUicustomizationsettingsGetuimanagementsettingsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ThemeSettingsDto>**](ThemeSettingsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUicustomizationsettingsUpdatedefaultuimanagementsettingsPut**
?> apiServicesAppUicustomizationsettingsUpdatedefaultuimanagementsettingsPut(body)

ApiServicesAppUicustomizationsettingsUpdatedefaultuimanagementsettingsPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UiCustomizationSettingsApi();
var body = new ThemeSettingsDto(); // ThemeSettingsDto | 

try { 
    api_instance.apiServicesAppUicustomizationsettingsUpdatedefaultuimanagementsettingsPut(body);
} catch (e) {
    print("Exception when calling UiCustomizationSettingsApi->apiServicesAppUicustomizationsettingsUpdatedefaultuimanagementsettingsPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ThemeSettingsDto**](ThemeSettingsDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUicustomizationsettingsUpdateuimanagementsettingsPut**
?> apiServicesAppUicustomizationsettingsUpdateuimanagementsettingsPut(body)

ApiServicesAppUicustomizationsettingsUpdateuimanagementsettingsPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UiCustomizationSettingsApi();
var body = new ThemeSettingsDto(); // ThemeSettingsDto | 

try { 
    api_instance.apiServicesAppUicustomizationsettingsUpdateuimanagementsettingsPut(body);
} catch (e) {
    print("Exception when calling UiCustomizationSettingsApi->apiServicesAppUicustomizationsettingsUpdateuimanagementsettingsPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ThemeSettingsDto**](ThemeSettingsDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUicustomizationsettingsUsesystemdefaultsettingsPost**
?> apiServicesAppUicustomizationsettingsUsesystemdefaultsettingsPost()

ApiServicesAppUicustomizationsettingsUsesystemdefaultsettingsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UiCustomizationSettingsApi();

try { 
    api_instance.apiServicesAppUicustomizationsettingsUsesystemdefaultsettingsPost();
} catch (e) {
    print("Exception when calling UiCustomizationSettingsApi->apiServicesAppUicustomizationsettingsUsesystemdefaultsettingsPost: $e\n");
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

