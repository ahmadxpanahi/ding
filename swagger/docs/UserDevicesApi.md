# swagger.api.UserDevicesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppUserdevicesCreatePost**](UserDevicesApi.md#apiServicesAppUserdevicesCreatePost) | **POST** /api/services/app/UserDevices/Create | ApiServicesAppUserdevicesCreatePost
[**apiServicesAppUserdevicesDeleteDelete**](UserDevicesApi.md#apiServicesAppUserdevicesDeleteDelete) | **DELETE** /api/services/app/UserDevices/Delete | ApiServicesAppUserdevicesDeleteDelete
[**apiServicesAppUserdevicesGetallGet**](UserDevicesApi.md#apiServicesAppUserdevicesGetallGet) | **GET** /api/services/app/UserDevices/GetAll | ApiServicesAppUserdevicesGetallGet
[**apiServicesAppUserdevicesGetalldeviceforlookuptableGet**](UserDevicesApi.md#apiServicesAppUserdevicesGetalldeviceforlookuptableGet) | **GET** /api/services/app/UserDevices/GetAllDeviceForLookupTable | ApiServicesAppUserdevicesGetalldeviceforlookuptableGet
[**apiServicesAppUserdevicesGetalluserforlookuptableGet**](UserDevicesApi.md#apiServicesAppUserdevicesGetalluserforlookuptableGet) | **GET** /api/services/app/UserDevices/GetAllUserForLookupTable | ApiServicesAppUserdevicesGetalluserforlookuptableGet
[**apiServicesAppUserdevicesGetuserdevicestoexcelGet**](UserDevicesApi.md#apiServicesAppUserdevicesGetuserdevicestoexcelGet) | **GET** /api/services/app/UserDevices/GetUserDevicesToExcel | ApiServicesAppUserdevicesGetuserdevicestoexcelGet
[**apiServicesAppUserdevicesIsindevicePost**](UserDevicesApi.md#apiServicesAppUserdevicesIsindevicePost) | **POST** /api/services/app/UserDevices/IsInDevice | ApiServicesAppUserdevicesIsindevicePost
[**apiServicesAppUserdevicesRemovealluserdevicesDelete**](UserDevicesApi.md#apiServicesAppUserdevicesRemovealluserdevicesDelete) | **DELETE** /api/services/app/UserDevices/RemoveAllUserDevices | ApiServicesAppUserdevicesRemovealluserdevicesDelete
[**apiServicesAppUserdevicesSaveuserdevicesPost**](UserDevicesApi.md#apiServicesAppUserdevicesSaveuserdevicesPost) | **POST** /api/services/app/UserDevices/SaveUserDevices | ApiServicesAppUserdevicesSaveuserdevicesPost
[**apiServicesAppUserdevicesUsersindevicecountPost**](UserDevicesApi.md#apiServicesAppUserdevicesUsersindevicecountPost) | **POST** /api/services/app/UserDevices/UsersInDeviceCount | ApiServicesAppUserdevicesUsersindevicecountPost


# **apiServicesAppUserdevicesCreatePost**
?> apiServicesAppUserdevicesCreatePost(body)

ApiServicesAppUserdevicesCreatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var body = new CreateUserDeviceDto(); // CreateUserDeviceDto | 

try { 
    api_instance.apiServicesAppUserdevicesCreatePost(body);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesCreatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateUserDeviceDto**](CreateUserDeviceDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdevicesDeleteDelete**
?> apiServicesAppUserdevicesDeleteDelete(id)

ApiServicesAppUserdevicesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppUserdevicesDeleteDelete(id);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesDeleteDelete: $e\n");
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

# **apiServicesAppUserdevicesGetallGet**
> PagedResultDtoOfGetUserDeviceForViewDto apiServicesAppUserdevicesGetallGet(filter, userNameFilter, deviceNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppUserdevicesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var filter = filter_example; // String | 
var userNameFilter = userNameFilter_example; // String | 
var deviceNameFilter = deviceNameFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppUserdevicesGetallGet(filter, userNameFilter, deviceNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **deviceNameFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetUserDeviceForViewDto**](PagedResultDtoOfGetUserDeviceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdevicesGetalldeviceforlookuptableGet**
> PagedResultDtoOfUserDeviceDeviceLookupTableDto apiServicesAppUserdevicesGetalldeviceforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppUserdevicesGetalldeviceforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppUserdevicesGetalldeviceforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesGetalldeviceforlookuptableGet: $e\n");
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

[**PagedResultDtoOfUserDeviceDeviceLookupTableDto**](PagedResultDtoOfUserDeviceDeviceLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdevicesGetalluserforlookuptableGet**
> PagedResultDtoOfUserDeviceUserLookupTableDto apiServicesAppUserdevicesGetalluserforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppUserdevicesGetalluserforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppUserdevicesGetalluserforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesGetalluserforlookuptableGet: $e\n");
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

[**PagedResultDtoOfUserDeviceUserLookupTableDto**](PagedResultDtoOfUserDeviceUserLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdevicesGetuserdevicestoexcelGet**
> FileDto apiServicesAppUserdevicesGetuserdevicestoexcelGet(filter, userNameFilter, deviceNameFilter)

ApiServicesAppUserdevicesGetuserdevicestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var filter = filter_example; // String | 
var userNameFilter = userNameFilter_example; // String | 
var deviceNameFilter = deviceNameFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppUserdevicesGetuserdevicestoexcelGet(filter, userNameFilter, deviceNameFilter);
    print(result);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesGetuserdevicestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **deviceNameFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdevicesIsindevicePost**
> bool apiServicesAppUserdevicesIsindevicePost(userId, deviceId)

ApiServicesAppUserdevicesIsindevicePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var userId = 789; // int | 
var deviceId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserdevicesIsindevicePost(userId, deviceId);
    print(result);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesIsindevicePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 
 **deviceId** | **int**|  | [optional] 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdevicesRemovealluserdevicesDelete**
?> apiServicesAppUserdevicesRemovealluserdevicesDelete(deviceId)

ApiServicesAppUserdevicesRemovealluserdevicesDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var deviceId = 789; // int | 

try { 
    api_instance.apiServicesAppUserdevicesRemovealluserdevicesDelete(deviceId);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesRemovealluserdevicesDelete: $e\n");
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

# **apiServicesAppUserdevicesSaveuserdevicesPost**
?> apiServicesAppUserdevicesSaveuserdevicesPost(userId, body)

ApiServicesAppUserdevicesSaveuserdevicesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var userId = 789; // int | 
var body = [new List&lt;String&gt;()]; // List<String> | 

try { 
    api_instance.apiServicesAppUserdevicesSaveuserdevicesPost(userId, body);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesSaveuserdevicesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 
 **body** | **List&lt;String&gt;**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserdevicesUsersindevicecountPost**
> int apiServicesAppUserdevicesUsersindevicecountPost(deviceId)

ApiServicesAppUserdevicesUsersindevicecountPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDevicesApi();
var deviceId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserdevicesUsersindevicecountPost(deviceId);
    print(result);
} catch (e) {
    print("Exception when calling UserDevicesApi->apiServicesAppUserdevicesUsersindevicecountPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **int**|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

