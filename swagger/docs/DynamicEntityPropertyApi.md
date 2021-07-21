# swagger.api.DynamicEntityPropertyApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDynamicentitypropertyAddPost**](DynamicEntityPropertyApi.md#apiServicesAppDynamicentitypropertyAddPost) | **POST** /api/services/app/DynamicEntityProperty/Add | ApiServicesAppDynamicentitypropertyAddPost
[**apiServicesAppDynamicentitypropertyDeleteDelete**](DynamicEntityPropertyApi.md#apiServicesAppDynamicentitypropertyDeleteDelete) | **DELETE** /api/services/app/DynamicEntityProperty/Delete | ApiServicesAppDynamicentitypropertyDeleteDelete
[**apiServicesAppDynamicentitypropertyGetGet**](DynamicEntityPropertyApi.md#apiServicesAppDynamicentitypropertyGetGet) | **GET** /api/services/app/DynamicEntityProperty/Get | ApiServicesAppDynamicentitypropertyGetGet
[**apiServicesAppDynamicentitypropertyGetallGet**](DynamicEntityPropertyApi.md#apiServicesAppDynamicentitypropertyGetallGet) | **GET** /api/services/app/DynamicEntityProperty/GetAll | ApiServicesAppDynamicentitypropertyGetallGet
[**apiServicesAppDynamicentitypropertyGetallentitieshasdynamicpropertyGet**](DynamicEntityPropertyApi.md#apiServicesAppDynamicentitypropertyGetallentitieshasdynamicpropertyGet) | **GET** /api/services/app/DynamicEntityProperty/GetAllEntitiesHasDynamicProperty | ApiServicesAppDynamicentitypropertyGetallentitieshasdynamicpropertyGet
[**apiServicesAppDynamicentitypropertyGetallpropertiesofanentityGet**](DynamicEntityPropertyApi.md#apiServicesAppDynamicentitypropertyGetallpropertiesofanentityGet) | **GET** /api/services/app/DynamicEntityProperty/GetAllPropertiesOfAnEntity | ApiServicesAppDynamicentitypropertyGetallpropertiesofanentityGet
[**apiServicesAppDynamicentitypropertyUpdatePut**](DynamicEntityPropertyApi.md#apiServicesAppDynamicentitypropertyUpdatePut) | **PUT** /api/services/app/DynamicEntityProperty/Update | ApiServicesAppDynamicentitypropertyUpdatePut


# **apiServicesAppDynamicentitypropertyAddPost**
?> apiServicesAppDynamicentitypropertyAddPost(body)

ApiServicesAppDynamicentitypropertyAddPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyApi();
var body = new DynamicEntityPropertyDto(); // DynamicEntityPropertyDto | 

try { 
    api_instance.apiServicesAppDynamicentitypropertyAddPost(body);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyApi->apiServicesAppDynamicentitypropertyAddPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DynamicEntityPropertyDto**](DynamicEntityPropertyDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyDeleteDelete**
?> apiServicesAppDynamicentitypropertyDeleteDelete(id)

ApiServicesAppDynamicentitypropertyDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppDynamicentitypropertyDeleteDelete(id);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyApi->apiServicesAppDynamicentitypropertyDeleteDelete: $e\n");
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

# **apiServicesAppDynamicentitypropertyGetGet**
> DynamicEntityPropertyDto apiServicesAppDynamicentitypropertyGetGet(id)

ApiServicesAppDynamicentitypropertyGetGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDynamicentitypropertyGetGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyApi->apiServicesAppDynamicentitypropertyGetGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**DynamicEntityPropertyDto**](DynamicEntityPropertyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyGetallGet**
> ListResultDtoOfDynamicEntityPropertyDto apiServicesAppDynamicentitypropertyGetallGet()

ApiServicesAppDynamicentitypropertyGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyApi();

try { 
    var result = api_instance.apiServicesAppDynamicentitypropertyGetallGet();
    print(result);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyApi->apiServicesAppDynamicentitypropertyGetallGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfDynamicEntityPropertyDto**](ListResultDtoOfDynamicEntityPropertyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyGetallentitieshasdynamicpropertyGet**
> ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput apiServicesAppDynamicentitypropertyGetallentitieshasdynamicpropertyGet()

ApiServicesAppDynamicentitypropertyGetallentitieshasdynamicpropertyGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyApi();

try { 
    var result = api_instance.apiServicesAppDynamicentitypropertyGetallentitieshasdynamicpropertyGet();
    print(result);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyApi->apiServicesAppDynamicentitypropertyGetallentitieshasdynamicpropertyGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput**](ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyGetallpropertiesofanentityGet**
> ListResultDtoOfDynamicEntityPropertyDto apiServicesAppDynamicentitypropertyGetallpropertiesofanentityGet(entityFullName)

ApiServicesAppDynamicentitypropertyGetallpropertiesofanentityGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyApi();
var entityFullName = entityFullName_example; // String | 

try { 
    var result = api_instance.apiServicesAppDynamicentitypropertyGetallpropertiesofanentityGet(entityFullName);
    print(result);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyApi->apiServicesAppDynamicentitypropertyGetallpropertiesofanentityGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityFullName** | **String**|  | [optional] 

### Return type

[**ListResultDtoOfDynamicEntityPropertyDto**](ListResultDtoOfDynamicEntityPropertyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertyUpdatePut**
?> apiServicesAppDynamicentitypropertyUpdatePut(body)

ApiServicesAppDynamicentitypropertyUpdatePut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyApi();
var body = new DynamicEntityPropertyDto(); // DynamicEntityPropertyDto | 

try { 
    api_instance.apiServicesAppDynamicentitypropertyUpdatePut(body);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyApi->apiServicesAppDynamicentitypropertyUpdatePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DynamicEntityPropertyDto**](DynamicEntityPropertyDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

