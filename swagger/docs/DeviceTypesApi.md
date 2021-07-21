# swagger.api.DeviceTypesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDevicetypesCreateoreditPost**](DeviceTypesApi.md#apiServicesAppDevicetypesCreateoreditPost) | **POST** /api/services/app/DeviceTypes/CreateOrEdit | ApiServicesAppDevicetypesCreateoreditPost
[**apiServicesAppDevicetypesDeleteDelete**](DeviceTypesApi.md#apiServicesAppDevicetypesDeleteDelete) | **DELETE** /api/services/app/DeviceTypes/Delete | ApiServicesAppDevicetypesDeleteDelete
[**apiServicesAppDevicetypesGetallGet**](DeviceTypesApi.md#apiServicesAppDevicetypesGetallGet) | **GET** /api/services/app/DeviceTypes/GetAll | ApiServicesAppDevicetypesGetallGet
[**apiServicesAppDevicetypesGetdevicetypeforeditGet**](DeviceTypesApi.md#apiServicesAppDevicetypesGetdevicetypeforeditGet) | **GET** /api/services/app/DeviceTypes/GetDeviceTypeForEdit | ApiServicesAppDevicetypesGetdevicetypeforeditGet
[**apiServicesAppDevicetypesGetdevicetypeforviewGet**](DeviceTypesApi.md#apiServicesAppDevicetypesGetdevicetypeforviewGet) | **GET** /api/services/app/DeviceTypes/GetDeviceTypeForView | ApiServicesAppDevicetypesGetdevicetypeforviewGet
[**apiServicesAppDevicetypesGetdevicetypestoexcelGet**](DeviceTypesApi.md#apiServicesAppDevicetypesGetdevicetypestoexcelGet) | **GET** /api/services/app/DeviceTypes/GetDeviceTypesToExcel | ApiServicesAppDevicetypesGetdevicetypestoexcelGet


# **apiServicesAppDevicetypesCreateoreditPost**
?> apiServicesAppDevicetypesCreateoreditPost(body)

ApiServicesAppDevicetypesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DeviceTypesApi();
var body = new CreateOrEditDeviceTypeDto(); // CreateOrEditDeviceTypeDto | 

try { 
    api_instance.apiServicesAppDevicetypesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling DeviceTypesApi->apiServicesAppDevicetypesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditDeviceTypeDto**](CreateOrEditDeviceTypeDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicetypesDeleteDelete**
?> apiServicesAppDevicetypesDeleteDelete(id)

ApiServicesAppDevicetypesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DeviceTypesApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppDevicetypesDeleteDelete(id);
} catch (e) {
    print("Exception when calling DeviceTypesApi->apiServicesAppDevicetypesDeleteDelete: $e\n");
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

# **apiServicesAppDevicetypesGetallGet**
> PagedResultDtoOfGetDeviceTypeForViewDto apiServicesAppDevicetypesGetallGet(filter, titleFilter, sorting, skipCount, maxResultCount)

ApiServicesAppDevicetypesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DeviceTypesApi();
var filter = filter_example; // String | 
var titleFilter = titleFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDevicetypesGetallGet(filter, titleFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling DeviceTypesApi->apiServicesAppDevicetypesGetallGet: $e\n");
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

[**PagedResultDtoOfGetDeviceTypeForViewDto**](PagedResultDtoOfGetDeviceTypeForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicetypesGetdevicetypeforeditGet**
> GetDeviceTypeForEditOutput apiServicesAppDevicetypesGetdevicetypeforeditGet(id)

ApiServicesAppDevicetypesGetdevicetypeforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DeviceTypesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDevicetypesGetdevicetypeforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DeviceTypesApi->apiServicesAppDevicetypesGetdevicetypeforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetDeviceTypeForEditOutput**](GetDeviceTypeForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicetypesGetdevicetypeforviewGet**
> GetDeviceTypeForViewDto apiServicesAppDevicetypesGetdevicetypeforviewGet(id)

ApiServicesAppDevicetypesGetdevicetypeforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DeviceTypesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDevicetypesGetdevicetypeforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DeviceTypesApi->apiServicesAppDevicetypesGetdevicetypeforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetDeviceTypeForViewDto**](GetDeviceTypeForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicetypesGetdevicetypestoexcelGet**
> FileDto apiServicesAppDevicetypesGetdevicetypestoexcelGet(filter, titleFilter)

ApiServicesAppDevicetypesGetdevicetypestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DeviceTypesApi();
var filter = filter_example; // String | 
var titleFilter = titleFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppDevicetypesGetdevicetypestoexcelGet(filter, titleFilter);
    print(result);
} catch (e) {
    print("Exception when calling DeviceTypesApi->apiServicesAppDevicetypesGetdevicetypestoexcelGet: $e\n");
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

