# swagger.api.DynamicEntityPropertyValueApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDynamicentitypropertyvalueAddPost**](DynamicEntityPropertyValueApi.md#apiServicesAppDynamicentitypropertyvalueAddPost) | **POST** /api/services/app/DynamicEntityPropertyValue/Add | ApiServicesAppDynamicentitypropertyvalueAddPost
[**apiServicesAppDynamicentitypropertyvalueCleanvaluesPost**](DynamicEntityPropertyValueApi.md#apiServicesAppDynamicentitypropertyvalueCleanvaluesPost) | **POST** /api/services/app/DynamicEntityPropertyValue/CleanValues | ApiServicesAppDynamicentitypropertyvalueCleanvaluesPost
[**apiServicesAppDynamicentitypropertyvalueDeleteDelete**](DynamicEntityPropertyValueApi.md#apiServicesAppDynamicentitypropertyvalueDeleteDelete) | **DELETE** /api/services/app/DynamicEntityPropertyValue/Delete | ApiServicesAppDynamicentitypropertyvalueDeleteDelete
[**apiServicesAppDynamicentitypropertyvalueGetGet**](DynamicEntityPropertyValueApi.md#apiServicesAppDynamicentitypropertyvalueGetGet) | **GET** /api/services/app/DynamicEntityPropertyValue/Get | ApiServicesAppDynamicentitypropertyvalueGetGet
[**apiServicesAppDynamicentitypropertyvalueGetallGet**](DynamicEntityPropertyValueApi.md#apiServicesAppDynamicentitypropertyvalueGetallGet) | **GET** /api/services/app/DynamicEntityPropertyValue/GetAll | ApiServicesAppDynamicentitypropertyvalueGetallGet
[**apiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet**](DynamicEntityPropertyValueApi.md#apiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet) | **GET** /api/services/app/DynamicEntityPropertyValue/GetAllDynamicEntityPropertyValues | ApiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet
[**apiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost**](DynamicEntityPropertyValueApi.md#apiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost) | **POST** /api/services/app/DynamicEntityPropertyValue/InsertOrUpdateAllValues | ApiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost
[**apiServicesAppDynamicentitypropertyvalueUpdatePut**](DynamicEntityPropertyValueApi.md#apiServicesAppDynamicentitypropertyvalueUpdatePut) | **PUT** /api/services/app/DynamicEntityPropertyValue/Update | ApiServicesAppDynamicentitypropertyvalueUpdatePut


# **apiServicesAppDynamicentitypropertyvalueAddPost**
> apiServicesAppDynamicentitypropertyvalueAddPost(body)

ApiServicesAppDynamicentitypropertyvalueAddPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyValueApi();
var body = new DynamicEntityPropertyValueDto(); // DynamicEntityPropertyValueDto | 

try { 
    api_instance.apiServicesAppDynamicentitypropertyvalueAddPost(body);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyValueApi->apiServicesAppDynamicentitypropertyvalueAddPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DynamicEntityPropertyValueDto**](DynamicEntityPropertyValueDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyvalueCleanvaluesPost**
> apiServicesAppDynamicentitypropertyvalueCleanvaluesPost(body)

ApiServicesAppDynamicentitypropertyvalueCleanvaluesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyValueApi();
var body = new CleanValuesInput(); // CleanValuesInput | 

try { 
    api_instance.apiServicesAppDynamicentitypropertyvalueCleanvaluesPost(body);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyValueApi->apiServicesAppDynamicentitypropertyvalueCleanvaluesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CleanValuesInput**](CleanValuesInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyvalueDeleteDelete**
> apiServicesAppDynamicentitypropertyvalueDeleteDelete(id)

ApiServicesAppDynamicentitypropertyvalueDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyValueApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppDynamicentitypropertyvalueDeleteDelete(id);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyValueApi->apiServicesAppDynamicentitypropertyvalueDeleteDelete: $e\n");
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

# **apiServicesAppDynamicentitypropertyvalueGetGet**
> DynamicEntityPropertyValueDto apiServicesAppDynamicentitypropertyvalueGetGet(id)

ApiServicesAppDynamicentitypropertyvalueGetGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyValueApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDynamicentitypropertyvalueGetGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyValueApi->apiServicesAppDynamicentitypropertyvalueGetGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**DynamicEntityPropertyValueDto**](DynamicEntityPropertyValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyvalueGetallGet**
> ListResultDtoOfDynamicEntityPropertyValueDto apiServicesAppDynamicentitypropertyvalueGetallGet(entityId, propertyId)

ApiServicesAppDynamicentitypropertyvalueGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyValueApi();
var entityId = entityId_example; // String | 
var propertyId = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDynamicentitypropertyvalueGetallGet(entityId, propertyId);
    print(result);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyValueApi->apiServicesAppDynamicentitypropertyvalueGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String**|  | [optional] 
 **propertyId** | **int**|  | [optional] 

### Return type

[**ListResultDtoOfDynamicEntityPropertyValueDto**](ListResultDtoOfDynamicEntityPropertyValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet**
> GetAllDynamicEntityPropertyValuesOutput apiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet(entityFullName, entityId)

ApiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyValueApi();
var entityFullName = entityFullName_example; // String | 
var entityId = entityId_example; // String | 

try { 
    var result = api_instance.apiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet(entityFullName, entityId);
    print(result);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyValueApi->apiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityFullName** | **String**|  | 
 **entityId** | **String**|  | 

### Return type

[**GetAllDynamicEntityPropertyValuesOutput**](GetAllDynamicEntityPropertyValuesOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost**
> apiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost(body)

ApiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyValueApi();
var body = new InsertOrUpdateAllValuesInput(); // InsertOrUpdateAllValuesInput | 

try { 
    api_instance.apiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost(body);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyValueApi->apiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InsertOrUpdateAllValuesInput**](InsertOrUpdateAllValuesInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyvalueUpdatePut**
> apiServicesAppDynamicentitypropertyvalueUpdatePut(body)

ApiServicesAppDynamicentitypropertyvalueUpdatePut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyValueApi();
var body = new DynamicEntityPropertyValueDto(); // DynamicEntityPropertyValueDto | 

try { 
    api_instance.apiServicesAppDynamicentitypropertyvalueUpdatePut(body);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyValueApi->apiServicesAppDynamicentitypropertyvalueUpdatePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DynamicEntityPropertyValueDto**](DynamicEntityPropertyValueDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

