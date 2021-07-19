# swagger.api.DynamicPropertyValueApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDynamicpropertyvalueAddPost**](DynamicPropertyValueApi.md#apiServicesAppDynamicpropertyvalueAddPost) | **POST** /api/services/app/DynamicPropertyValue/Add | ApiServicesAppDynamicpropertyvalueAddPost
[**apiServicesAppDynamicpropertyvalueDeleteDelete**](DynamicPropertyValueApi.md#apiServicesAppDynamicpropertyvalueDeleteDelete) | **DELETE** /api/services/app/DynamicPropertyValue/Delete | ApiServicesAppDynamicpropertyvalueDeleteDelete
[**apiServicesAppDynamicpropertyvalueGetGet**](DynamicPropertyValueApi.md#apiServicesAppDynamicpropertyvalueGetGet) | **GET** /api/services/app/DynamicPropertyValue/Get | ApiServicesAppDynamicpropertyvalueGetGet
[**apiServicesAppDynamicpropertyvalueGetallvaluesofdynamicpropertyGet**](DynamicPropertyValueApi.md#apiServicesAppDynamicpropertyvalueGetallvaluesofdynamicpropertyGet) | **GET** /api/services/app/DynamicPropertyValue/GetAllValuesOfDynamicProperty | ApiServicesAppDynamicpropertyvalueGetallvaluesofdynamicpropertyGet
[**apiServicesAppDynamicpropertyvalueUpdatePut**](DynamicPropertyValueApi.md#apiServicesAppDynamicpropertyvalueUpdatePut) | **PUT** /api/services/app/DynamicPropertyValue/Update | ApiServicesAppDynamicpropertyvalueUpdatePut


# **apiServicesAppDynamicpropertyvalueAddPost**
> apiServicesAppDynamicpropertyvalueAddPost(body)

ApiServicesAppDynamicpropertyvalueAddPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyValueApi();
var body = new DynamicPropertyValueDto(); // DynamicPropertyValueDto | 

try { 
    api_instance.apiServicesAppDynamicpropertyvalueAddPost(body);
} catch (e) {
    print("Exception when calling DynamicPropertyValueApi->apiServicesAppDynamicpropertyvalueAddPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DynamicPropertyValueDto**](DynamicPropertyValueDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicpropertyvalueDeleteDelete**
> apiServicesAppDynamicpropertyvalueDeleteDelete(id)

ApiServicesAppDynamicpropertyvalueDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyValueApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppDynamicpropertyvalueDeleteDelete(id);
} catch (e) {
    print("Exception when calling DynamicPropertyValueApi->apiServicesAppDynamicpropertyvalueDeleteDelete: $e\n");
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

# **apiServicesAppDynamicpropertyvalueGetGet**
> DynamicPropertyValueDto apiServicesAppDynamicpropertyvalueGetGet(id)

ApiServicesAppDynamicpropertyvalueGetGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyValueApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDynamicpropertyvalueGetGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DynamicPropertyValueApi->apiServicesAppDynamicpropertyvalueGetGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**DynamicPropertyValueDto**](DynamicPropertyValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicpropertyvalueGetallvaluesofdynamicpropertyGet**
> ListResultDtoOfDynamicPropertyValueDto apiServicesAppDynamicpropertyvalueGetallvaluesofdynamicpropertyGet(id)

ApiServicesAppDynamicpropertyvalueGetallvaluesofdynamicpropertyGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyValueApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDynamicpropertyvalueGetallvaluesofdynamicpropertyGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DynamicPropertyValueApi->apiServicesAppDynamicpropertyvalueGetallvaluesofdynamicpropertyGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**ListResultDtoOfDynamicPropertyValueDto**](ListResultDtoOfDynamicPropertyValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicpropertyvalueUpdatePut**
> apiServicesAppDynamicpropertyvalueUpdatePut(body)

ApiServicesAppDynamicpropertyvalueUpdatePut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicPropertyValueApi();
var body = new DynamicPropertyValueDto(); // DynamicPropertyValueDto | 

try { 
    api_instance.apiServicesAppDynamicpropertyvalueUpdatePut(body);
} catch (e) {
    print("Exception when calling DynamicPropertyValueApi->apiServicesAppDynamicpropertyvalueUpdatePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DynamicPropertyValueDto**](DynamicPropertyValueDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

