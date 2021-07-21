# swagger.api.SessionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppSessionGetcurrentlogininformationsGet**](SessionApi.md#apiServicesAppSessionGetcurrentlogininformationsGet) | **GET** /api/services/app/Session/GetCurrentLoginInformations | ApiServicesAppSessionGetcurrentlogininformationsGet
[**apiServicesAppSessionUpdateusersignintokenPut**](SessionApi.md#apiServicesAppSessionUpdateusersignintokenPut) | **PUT** /api/services/app/Session/UpdateUserSignInToken | ApiServicesAppSessionUpdateusersignintokenPut


# **apiServicesAppSessionGetcurrentlogininformationsGet**
> GetCurrentLoginInformationsOutput apiServicesAppSessionGetcurrentlogininformationsGet()

ApiServicesAppSessionGetcurrentlogininformationsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SessionApi();

try { 
    var result = api_instance.apiServicesAppSessionGetcurrentlogininformationsGet();
    print(result);
} catch (e) {
    print("Exception when calling SessionApi->apiServicesAppSessionGetcurrentlogininformationsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetCurrentLoginInformationsOutput**](GetCurrentLoginInformationsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppSessionUpdateusersignintokenPut**
> UpdateUserSignInTokenOutput apiServicesAppSessionUpdateusersignintokenPut()

ApiServicesAppSessionUpdateusersignintokenPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SessionApi();

try { 
    var result = api_instance.apiServicesAppSessionUpdateusersignintokenPut();
    print(result);
} catch (e) {
    print("Exception when calling SessionApi->apiServicesAppSessionUpdateusersignintokenPut: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UpdateUserSignInTokenOutput**](UpdateUserSignInTokenOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

