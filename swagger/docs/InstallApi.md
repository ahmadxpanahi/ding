# swagger.api.InstallApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppInstallCheckdatabasePost**](InstallApi.md#apiServicesAppInstallCheckdatabasePost) | **POST** /api/services/app/Install/CheckDatabase | ApiServicesAppInstallCheckdatabasePost
[**apiServicesAppInstallGetappsettingsjsonGet**](InstallApi.md#apiServicesAppInstallGetappsettingsjsonGet) | **GET** /api/services/app/Install/GetAppSettingsJson | ApiServicesAppInstallGetappsettingsjsonGet
[**apiServicesAppInstallSetupPost**](InstallApi.md#apiServicesAppInstallSetupPost) | **POST** /api/services/app/Install/Setup | ApiServicesAppInstallSetupPost


# **apiServicesAppInstallCheckdatabasePost**
> CheckDatabaseOutput apiServicesAppInstallCheckdatabasePost()

ApiServicesAppInstallCheckdatabasePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallApi();

try { 
    var result = api_instance.apiServicesAppInstallCheckdatabasePost();
    print(result);
} catch (e) {
    print("Exception when calling InstallApi->apiServicesAppInstallCheckdatabasePost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CheckDatabaseOutput**](CheckDatabaseOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppInstallGetappsettingsjsonGet**
> AppSettingsJsonDto apiServicesAppInstallGetappsettingsjsonGet()

ApiServicesAppInstallGetappsettingsjsonGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallApi();

try { 
    var result = api_instance.apiServicesAppInstallGetappsettingsjsonGet();
    print(result);
} catch (e) {
    print("Exception when calling InstallApi->apiServicesAppInstallGetappsettingsjsonGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AppSettingsJsonDto**](AppSettingsJsonDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppInstallSetupPost**
> apiServicesAppInstallSetupPost(body)

ApiServicesAppInstallSetupPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InstallApi();
var body = new InstallDto(); // InstallDto | 

try { 
    api_instance.apiServicesAppInstallSetupPost(body);
} catch (e) {
    print("Exception when calling InstallApi->apiServicesAppInstallSetupPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstallDto**](InstallDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

