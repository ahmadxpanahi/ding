# swagger.api.DevicesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDevicesActivePost**](DevicesApi.md#apiServicesAppDevicesActivePost) | **POST** /api/services/app/Devices/Active | ApiServicesAppDevicesActivePost
[**apiServicesAppDevicesAssignPost**](DevicesApi.md#apiServicesAppDevicesAssignPost) | **POST** /api/services/app/Devices/Assign | ApiServicesAppDevicesAssignPost
[**apiServicesAppDevicesAvailablePost**](DevicesApi.md#apiServicesAppDevicesAvailablePost) | **POST** /api/services/app/Devices/Available | ApiServicesAppDevicesAvailablePost
[**apiServicesAppDevicesCreateoreditPost**](DevicesApi.md#apiServicesAppDevicesCreateoreditPost) | **POST** /api/services/app/Devices/CreateOrEdit | ApiServicesAppDevicesCreateoreditPost
[**apiServicesAppDevicesDeactivePost**](DevicesApi.md#apiServicesAppDevicesDeactivePost) | **POST** /api/services/app/Devices/Deactive | ApiServicesAppDevicesDeactivePost
[**apiServicesAppDevicesDeleteDelete**](DevicesApi.md#apiServicesAppDevicesDeleteDelete) | **DELETE** /api/services/app/Devices/Delete | ApiServicesAppDevicesDeleteDelete
[**apiServicesAppDevicesGetallGet**](DevicesApi.md#apiServicesAppDevicesGetallGet) | **GET** /api/services/app/Devices/GetAll | ApiServicesAppDevicesGetallGet
[**apiServicesAppDevicesGetalldevicetypeforlookuptableGet**](DevicesApi.md#apiServicesAppDevicesGetalldevicetypeforlookuptableGet) | **GET** /api/services/app/Devices/GetAllDeviceTypeForLookupTable | ApiServicesAppDevicesGetalldevicetypeforlookuptableGet
[**apiServicesAppDevicesGetdeviceforeditGet**](DevicesApi.md#apiServicesAppDevicesGetdeviceforeditGet) | **GET** /api/services/app/Devices/GetDeviceForEdit | ApiServicesAppDevicesGetdeviceforeditGet
[**apiServicesAppDevicesGetdeviceforregistrationGet**](DevicesApi.md#apiServicesAppDevicesGetdeviceforregistrationGet) | **GET** /api/services/app/Devices/GetDeviceForRegistration | ApiServicesAppDevicesGetdeviceforregistrationGet
[**apiServicesAppDevicesGetdeviceforviewGet**](DevicesApi.md#apiServicesAppDevicesGetdeviceforviewGet) | **GET** /api/services/app/Devices/GetDeviceForView | ApiServicesAppDevicesGetdeviceforviewGet
[**apiServicesAppDevicesGetdeviceserialGet**](DevicesApi.md#apiServicesAppDevicesGetdeviceserialGet) | **GET** /api/services/app/Devices/GetDeviceSerial | ApiServicesAppDevicesGetdeviceserialGet
[**apiServicesAppDevicesGetdevicestoexcelGet**](DevicesApi.md#apiServicesAppDevicesGetdevicestoexcelGet) | **GET** /api/services/app/Devices/GetDevicesToExcel | ApiServicesAppDevicesGetdevicestoexcelGet
[**apiServicesAppDevicesResetPost**](DevicesApi.md#apiServicesAppDevicesResetPost) | **POST** /api/services/app/Devices/Reset | ApiServicesAppDevicesResetPost
[**apiServicesAppDevicesSuspendPost**](DevicesApi.md#apiServicesAppDevicesSuspendPost) | **POST** /api/services/app/Devices/Suspend | ApiServicesAppDevicesSuspendPost
[**apiServicesAppDevicesUpdatemydevicePut**](DevicesApi.md#apiServicesAppDevicesUpdatemydevicePut) | **PUT** /api/services/app/Devices/UpdateMyDevice | ApiServicesAppDevicesUpdatemydevicePut


# **apiServicesAppDevicesActivePost**
> apiServicesAppDevicesActivePost(deviceId)

ApiServicesAppDevicesActivePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var deviceId = 789; // int | 

try { 
    api_instance.apiServicesAppDevicesActivePost(deviceId);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesActivePost: $e\n");
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

# **apiServicesAppDevicesAssignPost**
> apiServicesAppDevicesAssignPost(deviceId)

ApiServicesAppDevicesAssignPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var deviceId = 789; // int | 

try { 
    api_instance.apiServicesAppDevicesAssignPost(deviceId);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesAssignPost: $e\n");
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

# **apiServicesAppDevicesAvailablePost**
> apiServicesAppDevicesAvailablePost(deviceId)

ApiServicesAppDevicesAvailablePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var deviceId = 789; // int | 

try { 
    api_instance.apiServicesAppDevicesAvailablePost(deviceId);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesAvailablePost: $e\n");
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

# **apiServicesAppDevicesCreateoreditPost**
> apiServicesAppDevicesCreateoreditPost(body)

ApiServicesAppDevicesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var body = new CreateOrEditDeviceDto(); // CreateOrEditDeviceDto | 

try { 
    api_instance.apiServicesAppDevicesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditDeviceDto**](CreateOrEditDeviceDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicesDeactivePost**
> apiServicesAppDevicesDeactivePost(deviceId)

ApiServicesAppDevicesDeactivePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var deviceId = 789; // int | 

try { 
    api_instance.apiServicesAppDevicesDeactivePost(deviceId);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesDeactivePost: $e\n");
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

# **apiServicesAppDevicesDeleteDelete**
> apiServicesAppDevicesDeleteDelete(id)

ApiServicesAppDevicesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppDevicesDeleteDelete(id);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesDeleteDelete: $e\n");
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

# **apiServicesAppDevicesGetallGet**
> PagedResultDtoOfGetDeviceForViewDto apiServicesAppDevicesGetallGet(filter, serialNumberFilter, qRCodeFilter, bssIdFilter, ssIdFilter, uuIdFilter, majorFilter, minorFilter, nameFilter, deviceTypeTitleFilter, deviceStatusIdFilter, sorting, skipCount, maxResultCount)

ApiServicesAppDevicesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var filter = filter_example; // String | 
var serialNumberFilter = serialNumberFilter_example; // String | 
var qRCodeFilter = qRCodeFilter_example; // String | 
var bssIdFilter = bssIdFilter_example; // String | 
var ssIdFilter = ssIdFilter_example; // String | 
var uuIdFilter = uuIdFilter_example; // String | 
var majorFilter = majorFilter_example; // String | 
var minorFilter = minorFilter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var deviceTypeTitleFilter = deviceTypeTitleFilter_example; // String | 
var deviceStatusIdFilter = 56; // int | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDevicesGetallGet(filter, serialNumberFilter, qRCodeFilter, bssIdFilter, ssIdFilter, uuIdFilter, majorFilter, minorFilter, nameFilter, deviceTypeTitleFilter, deviceStatusIdFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **serialNumberFilter** | **String**|  | [optional] 
 **qRCodeFilter** | **String**|  | [optional] 
 **bssIdFilter** | **String**|  | [optional] 
 **ssIdFilter** | **String**|  | [optional] 
 **uuIdFilter** | **String**|  | [optional] 
 **majorFilter** | **String**|  | [optional] 
 **minorFilter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **deviceTypeTitleFilter** | **String**|  | [optional] 
 **deviceStatusIdFilter** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetDeviceForViewDto**](PagedResultDtoOfGetDeviceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicesGetalldevicetypeforlookuptableGet**
> PagedResultDtoOfDeviceDeviceTypeLookupTableDto apiServicesAppDevicesGetalldevicetypeforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppDevicesGetalldevicetypeforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDevicesGetalldevicetypeforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesGetalldevicetypeforlookuptableGet: $e\n");
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

[**PagedResultDtoOfDeviceDeviceTypeLookupTableDto**](PagedResultDtoOfDeviceDeviceTypeLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicesGetdeviceforeditGet**
> GetDeviceForEditOutput apiServicesAppDevicesGetdeviceforeditGet(id)

ApiServicesAppDevicesGetdeviceforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppDevicesGetdeviceforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesGetdeviceforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetDeviceForEditOutput**](GetDeviceForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicesGetdeviceforregistrationGet**
> GetDeviceDetailForRegistrationDto apiServicesAppDevicesGetdeviceforregistrationGet(deviceEncryptedSerial)

ApiServicesAppDevicesGetdeviceforregistrationGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var deviceEncryptedSerial = deviceEncryptedSerial_example; // String | 

try { 
    var result = api_instance.apiServicesAppDevicesGetdeviceforregistrationGet(deviceEncryptedSerial);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesGetdeviceforregistrationGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceEncryptedSerial** | **String**|  | [optional] 

### Return type

[**GetDeviceDetailForRegistrationDto**](GetDeviceDetailForRegistrationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicesGetdeviceforviewGet**
> GetDeviceForViewDto apiServicesAppDevicesGetdeviceforviewGet(id)

ApiServicesAppDevicesGetdeviceforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppDevicesGetdeviceforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesGetdeviceforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetDeviceForViewDto**](GetDeviceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicesGetdeviceserialGet**
> GetDeviceSerialDto apiServicesAppDevicesGetdeviceserialGet(qRCode, password, managerMobileNumber)

ApiServicesAppDevicesGetdeviceserialGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var qRCode = qRCode_example; // String | 
var password = password_example; // String | 
var managerMobileNumber = managerMobileNumber_example; // String | 

try { 
    var result = api_instance.apiServicesAppDevicesGetdeviceserialGet(qRCode, password, managerMobileNumber);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesGetdeviceserialGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qRCode** | **String**|  | 
 **password** | **String**|  | 
 **managerMobileNumber** | **String**|  | 

### Return type

[**GetDeviceSerialDto**](GetDeviceSerialDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicesGetdevicestoexcelGet**
> FileDto apiServicesAppDevicesGetdevicestoexcelGet(filter, serialNumberFilter, qRCodeFilter, bssIdFilter, ssIdFilter, uuIdFilter, majorFilter, minorFilter, nameFilter, deviceTypeTitleFilter, deviceStatusIdFilter)

ApiServicesAppDevicesGetdevicestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var filter = filter_example; // String | 
var serialNumberFilter = serialNumberFilter_example; // String | 
var qRCodeFilter = qRCodeFilter_example; // String | 
var bssIdFilter = bssIdFilter_example; // String | 
var ssIdFilter = ssIdFilter_example; // String | 
var uuIdFilter = uuIdFilter_example; // String | 
var majorFilter = majorFilter_example; // String | 
var minorFilter = minorFilter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var deviceTypeTitleFilter = deviceTypeTitleFilter_example; // String | 
var deviceStatusIdFilter = 56; // int | 

try { 
    var result = api_instance.apiServicesAppDevicesGetdevicestoexcelGet(filter, serialNumberFilter, qRCodeFilter, bssIdFilter, ssIdFilter, uuIdFilter, majorFilter, minorFilter, nameFilter, deviceTypeTitleFilter, deviceStatusIdFilter);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesGetdevicestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **serialNumberFilter** | **String**|  | [optional] 
 **qRCodeFilter** | **String**|  | [optional] 
 **bssIdFilter** | **String**|  | [optional] 
 **ssIdFilter** | **String**|  | [optional] 
 **uuIdFilter** | **String**|  | [optional] 
 **majorFilter** | **String**|  | [optional] 
 **minorFilter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **deviceTypeTitleFilter** | **String**|  | [optional] 
 **deviceStatusIdFilter** | **int**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDevicesResetPost**
> apiServicesAppDevicesResetPost(deviceId)

ApiServicesAppDevicesResetPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var deviceId = 789; // int | 

try { 
    api_instance.apiServicesAppDevicesResetPost(deviceId);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesResetPost: $e\n");
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

# **apiServicesAppDevicesSuspendPost**
> apiServicesAppDevicesSuspendPost(deviceId)

ApiServicesAppDevicesSuspendPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var deviceId = 789; // int | 

try { 
    api_instance.apiServicesAppDevicesSuspendPost(deviceId);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesSuspendPost: $e\n");
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

# **apiServicesAppDevicesUpdatemydevicePut**
> apiServicesAppDevicesUpdatemydevicePut(body)

ApiServicesAppDevicesUpdatemydevicePut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var body = new EditMyDeviceDto(); // EditMyDeviceDto | 

try { 
    api_instance.apiServicesAppDevicesUpdatemydevicePut(body);
} catch (e) {
    print("Exception when calling DevicesApi->apiServicesAppDevicesUpdatemydevicePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EditMyDeviceDto**](EditMyDeviceDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

