# swagger.api.UserLoginApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppUserloginGetrecentuserloginattemptsGet**](UserLoginApi.md#apiServicesAppUserloginGetrecentuserloginattemptsGet) | **GET** /api/services/app/UserLogin/GetRecentUserLoginAttempts | ApiServicesAppUserloginGetrecentuserloginattemptsGet


# **apiServicesAppUserloginGetrecentuserloginattemptsGet**
> ListResultDtoOfUserLoginAttemptDto apiServicesAppUserloginGetrecentuserloginattemptsGet()

ApiServicesAppUserloginGetrecentuserloginattemptsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserLoginApi();

try { 
    var result = api_instance.apiServicesAppUserloginGetrecentuserloginattemptsGet();
    print(result);
} catch (e) {
    print("Exception when calling UserLoginApi->apiServicesAppUserloginGetrecentuserloginattemptsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfUserLoginAttemptDto**](ListResultDtoOfUserLoginAttemptDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

