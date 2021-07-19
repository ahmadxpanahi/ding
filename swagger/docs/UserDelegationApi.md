# swagger.api.UserDelegationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppUserdelegationDelegatenewuserPost**](UserDelegationApi.md#apiServicesAppUserdelegationDelegatenewuserPost) | **POST** /api/services/app/UserDelegation/DelegateNewUser | ApiServicesAppUserdelegationDelegatenewuserPost
[**apiServicesAppUserdelegationGetactiveuserdelegationsGet**](UserDelegationApi.md#apiServicesAppUserdelegationGetactiveuserdelegationsGet) | **GET** /api/services/app/UserDelegation/GetActiveUserDelegations | ApiServicesAppUserdelegationGetactiveuserdelegationsGet
[**apiServicesAppUserdelegationGetdelegatedusersGet**](UserDelegationApi.md#apiServicesAppUserdelegationGetdelegatedusersGet) | **GET** /api/services/app/UserDelegation/GetDelegatedUsers | ApiServicesAppUserdelegationGetdelegatedusersGet
[**apiServicesAppUserdelegationRemovedelegationDelete**](UserDelegationApi.md#apiServicesAppUserdelegationRemovedelegationDelete) | **DELETE** /api/services/app/UserDelegation/RemoveDelegation | ApiServicesAppUserdelegationRemovedelegationDelete


# **apiServicesAppUserdelegationDelegatenewuserPost**
> apiServicesAppUserdelegationDelegatenewuserPost(body)

ApiServicesAppUserdelegationDelegatenewuserPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDelegationApi();
var body = new CreateUserDelegationDto(); // CreateUserDelegationDto | 

try { 
    api_instance.apiServicesAppUserdelegationDelegatenewuserPost(body);
} catch (e) {
    print("Exception when calling UserDelegationApi->apiServicesAppUserdelegationDelegatenewuserPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateUserDelegationDto**](CreateUserDelegationDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdelegationGetactiveuserdelegationsGet**
> List<UserDelegationDto> apiServicesAppUserdelegationGetactiveuserdelegationsGet()

ApiServicesAppUserdelegationGetactiveuserdelegationsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDelegationApi();

try { 
    var result = api_instance.apiServicesAppUserdelegationGetactiveuserdelegationsGet();
    print(result);
} catch (e) {
    print("Exception when calling UserDelegationApi->apiServicesAppUserdelegationGetactiveuserdelegationsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserDelegationDto>**](UserDelegationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdelegationGetdelegatedusersGet**
> PagedResultDtoOfUserDelegationDto apiServicesAppUserdelegationGetdelegatedusersGet(maxResultCount, skipCount, sorting)

ApiServicesAppUserdelegationGetdelegatedusersGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDelegationApi();
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 
var sorting = sorting_example; // String | 

try { 
    var result = api_instance.apiServicesAppUserdelegationGetdelegatedusersGet(maxResultCount, skipCount, sorting);
    print(result);
} catch (e) {
    print("Exception when calling UserDelegationApi->apiServicesAppUserdelegationGetdelegatedusersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 

### Return type

[**PagedResultDtoOfUserDelegationDto**](PagedResultDtoOfUserDelegationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdelegationRemovedelegationDelete**
> apiServicesAppUserdelegationRemovedelegationDelete(id)

ApiServicesAppUserdelegationRemovedelegationDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDelegationApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppUserdelegationRemovedelegationDelete(id);
} catch (e) {
    print("Exception when calling UserDelegationApi->apiServicesAppUserdelegationRemovedelegationDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

