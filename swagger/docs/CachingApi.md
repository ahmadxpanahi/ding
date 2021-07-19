# swagger.api.CachingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppCachingClearallcachesPost**](CachingApi.md#apiServicesAppCachingClearallcachesPost) | **POST** /api/services/app/Caching/ClearAllCaches | ApiServicesAppCachingClearallcachesPost
[**apiServicesAppCachingClearcachePost**](CachingApi.md#apiServicesAppCachingClearcachePost) | **POST** /api/services/app/Caching/ClearCache | ApiServicesAppCachingClearcachePost
[**apiServicesAppCachingGetallcachesGet**](CachingApi.md#apiServicesAppCachingGetallcachesGet) | **GET** /api/services/app/Caching/GetAllCaches | ApiServicesAppCachingGetallcachesGet


# **apiServicesAppCachingClearallcachesPost**
> apiServicesAppCachingClearallcachesPost()

ApiServicesAppCachingClearallcachesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CachingApi();

try { 
    api_instance.apiServicesAppCachingClearallcachesPost();
} catch (e) {
    print("Exception when calling CachingApi->apiServicesAppCachingClearallcachesPost: $e\n");
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

# **apiServicesAppCachingClearcachePost**
> apiServicesAppCachingClearcachePost(body)

ApiServicesAppCachingClearcachePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CachingApi();
var body = new EntityDtoOfString(); // EntityDtoOfString | 

try { 
    api_instance.apiServicesAppCachingClearcachePost(body);
} catch (e) {
    print("Exception when calling CachingApi->apiServicesAppCachingClearcachePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EntityDtoOfString**](EntityDtoOfString.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCachingGetallcachesGet**
> ListResultDtoOfCacheDto apiServicesAppCachingGetallcachesGet()

ApiServicesAppCachingGetallcachesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CachingApi();

try { 
    var result = api_instance.apiServicesAppCachingGetallcachesGet();
    print(result);
} catch (e) {
    print("Exception when calling CachingApi->apiServicesAppCachingGetallcachesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfCacheDto**](ListResultDtoOfCacheDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

