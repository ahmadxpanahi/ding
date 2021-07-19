# swagger.api.PurchasingResourcesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppPurchasingresourcesCreateoreditPost**](PurchasingResourcesApi.md#apiServicesAppPurchasingresourcesCreateoreditPost) | **POST** /api/services/app/PurchasingResources/CreateOrEdit | ApiServicesAppPurchasingresourcesCreateoreditPost
[**apiServicesAppPurchasingresourcesDeleteDelete**](PurchasingResourcesApi.md#apiServicesAppPurchasingresourcesDeleteDelete) | **DELETE** /api/services/app/PurchasingResources/Delete | ApiServicesAppPurchasingresourcesDeleteDelete
[**apiServicesAppPurchasingresourcesGetallGet**](PurchasingResourcesApi.md#apiServicesAppPurchasingresourcesGetallGet) | **GET** /api/services/app/PurchasingResources/GetAll | ApiServicesAppPurchasingresourcesGetallGet
[**apiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet**](PurchasingResourcesApi.md#apiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet) | **GET** /api/services/app/PurchasingResources/GetPurchasingResourceForEdit | ApiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet
[**apiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet**](PurchasingResourcesApi.md#apiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet) | **GET** /api/services/app/PurchasingResources/GetPurchasingResourceForView | ApiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet
[**apiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet**](PurchasingResourcesApi.md#apiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet) | **GET** /api/services/app/PurchasingResources/GetPurchasingResourcesToExcel | ApiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet


# **apiServicesAppPurchasingresourcesCreateoreditPost**
> apiServicesAppPurchasingresourcesCreateoreditPost(body)

ApiServicesAppPurchasingresourcesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PurchasingResourcesApi();
var body = new CreateOrEditPurchasingResourceDto(); // CreateOrEditPurchasingResourceDto | 

try { 
    api_instance.apiServicesAppPurchasingresourcesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling PurchasingResourcesApi->apiServicesAppPurchasingresourcesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditPurchasingResourceDto**](CreateOrEditPurchasingResourceDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPurchasingresourcesDeleteDelete**
> apiServicesAppPurchasingresourcesDeleteDelete(id)

ApiServicesAppPurchasingresourcesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PurchasingResourcesApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppPurchasingresourcesDeleteDelete(id);
} catch (e) {
    print("Exception when calling PurchasingResourcesApi->apiServicesAppPurchasingresourcesDeleteDelete: $e\n");
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

# **apiServicesAppPurchasingresourcesGetallGet**
> PagedResultDtoOfGetPurchasingResourceForViewDto apiServicesAppPurchasingresourcesGetallGet(filter, titleFilter, sorting, skipCount, maxResultCount)

ApiServicesAppPurchasingresourcesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PurchasingResourcesApi();
var filter = filter_example; // String | 
var titleFilter = titleFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppPurchasingresourcesGetallGet(filter, titleFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling PurchasingResourcesApi->apiServicesAppPurchasingresourcesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **titleFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetPurchasingResourceForViewDto**](PagedResultDtoOfGetPurchasingResourceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet**
> GetPurchasingResourceForEditOutput apiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet(id)

ApiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PurchasingResourcesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling PurchasingResourcesApi->apiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetPurchasingResourceForEditOutput**](GetPurchasingResourceForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet**
> GetPurchasingResourceForViewDto apiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet(id)

ApiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PurchasingResourcesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling PurchasingResourcesApi->apiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetPurchasingResourceForViewDto**](GetPurchasingResourceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet**
> FileDto apiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet(filter, titleFilter)

ApiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PurchasingResourcesApi();
var filter = filter_example; // String | 
var titleFilter = titleFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet(filter, titleFilter);
    print(result);
} catch (e) {
    print("Exception when calling PurchasingResourcesApi->apiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **titleFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

