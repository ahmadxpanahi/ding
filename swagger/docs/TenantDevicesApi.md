# swagger.api.TenantDevicesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppTenantdevicesAssignnewtenanttodevicePost**](TenantDevicesApi.md#apiServicesAppTenantdevicesAssignnewtenanttodevicePost) | **POST** /api/services/app/TenantDevices/AssignNewTenantToDevice | ApiServicesAppTenantdevicesAssignnewtenanttodevicePost
[**apiServicesAppTenantdevicesCreateoreditPost**](TenantDevicesApi.md#apiServicesAppTenantdevicesCreateoreditPost) | **POST** /api/services/app/TenantDevices/CreateOrEdit | ApiServicesAppTenantdevicesCreateoreditPost
[**apiServicesAppTenantdevicesDeleteDelete**](TenantDevicesApi.md#apiServicesAppTenantdevicesDeleteDelete) | **DELETE** /api/services/app/TenantDevices/Delete | ApiServicesAppTenantdevicesDeleteDelete
[**apiServicesAppTenantdevicesGetallGet**](TenantDevicesApi.md#apiServicesAppTenantdevicesGetallGet) | **GET** /api/services/app/TenantDevices/GetAll | ApiServicesAppTenantdevicesGetallGet
[**apiServicesAppTenantdevicesGetalldeviceforlookuptableGet**](TenantDevicesApi.md#apiServicesAppTenantdevicesGetalldeviceforlookuptableGet) | **GET** /api/services/app/TenantDevices/GetAllDeviceForLookupTable | ApiServicesAppTenantdevicesGetalldeviceforlookuptableGet
[**apiServicesAppTenantdevicesGetalltenantdevicesGet**](TenantDevicesApi.md#apiServicesAppTenantdevicesGetalltenantdevicesGet) | **GET** /api/services/app/TenantDevices/GetAllTenantDevices | ApiServicesAppTenantdevicesGetalltenantdevicesGet
[**apiServicesAppTenantdevicesGetalltenantforlookuptableGet**](TenantDevicesApi.md#apiServicesAppTenantdevicesGetalltenantforlookuptableGet) | **GET** /api/services/app/TenantDevices/GetAllTenantForLookupTable | ApiServicesAppTenantdevicesGetalltenantforlookuptableGet
[**apiServicesAppTenantdevicesGettenantdeviceforviewGet**](TenantDevicesApi.md#apiServicesAppTenantdevicesGettenantdeviceforviewGet) | **GET** /api/services/app/TenantDevices/GetTenantDeviceForView | ApiServicesAppTenantdevicesGettenantdeviceforviewGet
[**apiServicesAppTenantdevicesGettenantdevicestoexcelGet**](TenantDevicesApi.md#apiServicesAppTenantdevicesGettenantdevicestoexcelGet) | **GET** /api/services/app/TenantDevices/GetTenantDevicesToExcel | ApiServicesAppTenantdevicesGettenantdevicestoexcelGet
[**apiServicesAppTenantdevicesRemovealltenantdevicesDelete**](TenantDevicesApi.md#apiServicesAppTenantdevicesRemovealltenantdevicesDelete) | **DELETE** /api/services/app/TenantDevices/RemoveAllTenantDevices | ApiServicesAppTenantdevicesRemovealltenantdevicesDelete


# **apiServicesAppTenantdevicesAssignnewtenanttodevicePost**
?> apiServicesAppTenantdevicesAssignnewtenanttodevicePost(body)

ApiServicesAppTenantdevicesAssignnewtenanttodevicePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var body = new CreateOrEditTenantDeviceDto(); // CreateOrEditTenantDeviceDto | 

try { 
    api_instance.apiServicesAppTenantdevicesAssignnewtenanttodevicePost(body);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesAssignnewtenanttodevicePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditTenantDeviceDto**](CreateOrEditTenantDeviceDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdevicesCreateoreditPost**
?> apiServicesAppTenantdevicesCreateoreditPost(body)

ApiServicesAppTenantdevicesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var body = new CreateOrEditTenantDeviceDto(); // CreateOrEditTenantDeviceDto | 

try { 
    api_instance.apiServicesAppTenantdevicesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditTenantDeviceDto**](CreateOrEditTenantDeviceDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdevicesDeleteDelete**
?> apiServicesAppTenantdevicesDeleteDelete(id)

ApiServicesAppTenantdevicesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppTenantdevicesDeleteDelete(id);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesDeleteDelete: $e\n");
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

# **apiServicesAppTenantdevicesGetallGet**
> PagedResultDtoOfGetTenantDeviceForViewDto apiServicesAppTenantdevicesGetallGet(filter, deviceSerialNumberFilter, tenantNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppTenantdevicesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var filter = filter_example; // String | 
var deviceSerialNumberFilter = deviceSerialNumberFilter_example; // String | 
var tenantNameFilter = tenantNameFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppTenantdevicesGetallGet(filter, deviceSerialNumberFilter, tenantNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **deviceSerialNumberFilter** | **String**|  | [optional] 
 **tenantNameFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetTenantDeviceForViewDto**](PagedResultDtoOfGetTenantDeviceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdevicesGetalldeviceforlookuptableGet**
> PagedResultDtoOfTenantDeviceDeviceLookupTableDto apiServicesAppTenantdevicesGetalldeviceforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppTenantdevicesGetalldeviceforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppTenantdevicesGetalldeviceforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesGetalldeviceforlookuptableGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfTenantDeviceDeviceLookupTableDto**](PagedResultDtoOfTenantDeviceDeviceLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdevicesGetalltenantdevicesGet**
> PagedResultDtoOfGetTenantDeviceForViewDto apiServicesAppTenantdevicesGetalltenantdevicesGet(filter, deviceSerialNumberFilter, tenantNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppTenantdevicesGetalltenantdevicesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var filter = filter_example; // String | 
var deviceSerialNumberFilter = deviceSerialNumberFilter_example; // String | 
var tenantNameFilter = tenantNameFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppTenantdevicesGetalltenantdevicesGet(filter, deviceSerialNumberFilter, tenantNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesGetalltenantdevicesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **deviceSerialNumberFilter** | **String**|  | [optional] 
 **tenantNameFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetTenantDeviceForViewDto**](PagedResultDtoOfGetTenantDeviceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdevicesGetalltenantforlookuptableGet**
> PagedResultDtoOfTenantDeviceTenantLookupTableDto apiServicesAppTenantdevicesGetalltenantforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppTenantdevicesGetalltenantforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppTenantdevicesGetalltenantforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesGetalltenantforlookuptableGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfTenantDeviceTenantLookupTableDto**](PagedResultDtoOfTenantDeviceTenantLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdevicesGettenantdeviceforviewGet**
> GetTenantDeviceForViewDto apiServicesAppTenantdevicesGettenantdeviceforviewGet(id)

ApiServicesAppTenantdevicesGettenantdeviceforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppTenantdevicesGettenantdeviceforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesGettenantdeviceforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetTenantDeviceForViewDto**](GetTenantDeviceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdevicesGettenantdevicestoexcelGet**
> FileDto apiServicesAppTenantdevicesGettenantdevicestoexcelGet(filter, deviceSerialNumberFilter, tenantNameFilter)

ApiServicesAppTenantdevicesGettenantdevicestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var filter = filter_example; // String | 
var deviceSerialNumberFilter = deviceSerialNumberFilter_example; // String | 
var tenantNameFilter = tenantNameFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppTenantdevicesGettenantdevicestoexcelGet(filter, deviceSerialNumberFilter, tenantNameFilter);
    print(result);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesGettenantdevicestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **deviceSerialNumberFilter** | **String**|  | [optional] 
 **tenantNameFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdevicesRemovealltenantdevicesDelete**
?> apiServicesAppTenantdevicesRemovealltenantdevicesDelete(deviceId)

ApiServicesAppTenantdevicesRemovealltenantdevicesDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDevicesApi();
var deviceId = 789; // int | 

try { 
    api_instance.apiServicesAppTenantdevicesRemovealltenantdevicesDelete(deviceId);
} catch (e) {
    print("Exception when calling TenantDevicesApi->apiServicesAppTenantdevicesRemovealltenantdevicesDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

