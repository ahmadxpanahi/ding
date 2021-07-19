# swagger.api.DynamicPropertyApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDynamicpropertyAddPost**](DynamicPropertyApi.md#apiServicesAppDynamicpropertyAddPost) | **POST** /api/services/app/DynamicProperty/Add | ApiServicesAppDynamicpropertyAddPost
[**apiServicesAppDynamicpropertyDeleteDelete**](DynamicPropertyApi.md#apiServicesAppDynamicpropertyDeleteDelete) | **DELETE** /api/services/app/DynamicProperty/Delete | ApiServicesAppDynamicpropertyDeleteDelete
[**apiServicesAppDynamicpropertyFindallowedinputtypePost**](DynamicPropertyApi.md#apiServicesAppDynamicpropertyFindallowedinputtypePost) | **POST** /api/services/app/DynamicProperty/FindAllowedInputType | ApiServicesAppDynamicpropertyFindallowedinputtypePost
[**apiServicesAppDynamicpropertyGetGet**](DynamicPropertyApi.md#apiServicesAppDynamicpropertyGetGet) | **GET** /api/services/app/DynamicProperty/Get | ApiServicesAppDynamicpropertyGetGet
[**apiServicesAppDynamicpropertyGetallGet**](DynamicPropertyApi.md#apiServicesAppDynamicpropertyGetallGet) | **GET** /api/services/app/DynamicProperty/GetAll | ApiServicesAppDynamicpropertyGetallGet
[**apiServicesAppDynamicpropertyUpdatePut**](DynamicPropertyApi.md#apiServicesAppDynamicpropertyUpdatePut) | **PUT** /api/services/app/DynamicProperty/Update | ApiServicesAppDynamicpropertyUpdatePut


# **apiServicesAppDynamicpropertyAddPost**
?> apiServicesAppDynamicpropertyAddPost(body)

ApiServicesAppDynamicpropertyAddPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyApi();
var body = new DynamicPropertyDto(); // DynamicPropertyDto | 

try { 
    api_instance.apiServicesAppDynamicpropertyAddPost(body);
} catch (e) {
    print("Exception when calling DynamicPropertyApi->apiServicesAppDynamicpropertyAddPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DynamicPropertyDto**](DynamicPropertyDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicpropertyDeleteDelete**
?> apiServicesAppDynamicpropertyDeleteDelete(id)

ApiServicesAppDynamicpropertyDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppDynamicpropertyDeleteDelete(id);
} catch (e) {
    print("Exception when calling DynamicPropertyApi->apiServicesAppDynamicpropertyDeleteDelete: $e\n");
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

# **apiServicesAppDynamicpropertyFindallowedinputtypePost**
> IInputType apiServicesAppDynamicpropertyFindallowedinputtypePost(name)

ApiServicesAppDynamicpropertyFindallowedinputtypePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyApi();
var name = name_example; // String | 

try { 
    var result = api_instance.apiServicesAppDynamicpropertyFindallowedinputtypePost(name);
    print(result);
} catch (e) {
    print("Exception when calling DynamicPropertyApi->apiServicesAppDynamicpropertyFindallowedinputtypePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 

### Return type

[**IInputType**](IInputType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicpropertyGetGet**
> DynamicPropertyDto apiServicesAppDynamicpropertyGetGet(id)

ApiServicesAppDynamicpropertyGetGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDynamicpropertyGetGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DynamicPropertyApi->apiServicesAppDynamicpropertyGetGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**DynamicPropertyDto**](DynamicPropertyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicpropertyGetallGet**
> ListResultDtoOfDynamicPropertyDto apiServicesAppDynamicpropertyGetallGet()

ApiServicesAppDynamicpropertyGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyApi();

try { 
    var result = api_instance.apiServicesAppDynamicpropertyGetallGet();
    print(result);
} catch (e) {
    print("Exception when calling DynamicPropertyApi->apiServicesAppDynamicpropertyGetallGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfDynamicPropertyDto**](ListResultDtoOfDynamicPropertyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicpropertyUpdatePut**
?> apiServicesAppDynamicpropertyUpdatePut(body)

ApiServicesAppDynamicpropertyUpdatePut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyApi();
var body = new DynamicPropertyDto(); // DynamicPropertyDto | 

try { 
    api_instance.apiServicesAppDynamicpropertyUpdatePut(body);
} catch (e) {
    print("Exception when calling DynamicPropertyApi->apiServicesAppDynamicpropertyUpdatePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DynamicPropertyDto**](DynamicPropertyDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

