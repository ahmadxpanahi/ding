# swagger.api.ReportsDevicesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppReportsdevicesGetallGet**](ReportsDevicesApi.md#apiServicesAppReportsdevicesGetallGet) | **GET** /api/services/app/ReportsDevices/GetAll | ApiServicesAppReportsdevicesGetallGet
[**apiServicesAppReportsdevicesGetdevicestoexcelGet**](ReportsDevicesApi.md#apiServicesAppReportsdevicesGetdevicestoexcelGet) | **GET** /api/services/app/ReportsDevices/GetDevicesToExcel | ApiServicesAppReportsdevicesGetdevicestoexcelGet


# **apiServicesAppReportsdevicesGetallGet**
> PagedResultDtoOfGetDeviceForViewDto apiServicesAppReportsdevicesGetallGet(filter, serialNumberFilter, qRCodeFilter, bssIdFilter, ssIdFilter, uuIdFilter, majorFilter, minorFilter, nameFilter, deviceTypeTitleFilter, deviceStatusIdFilter, sorting, skipCount, maxResultCount)

ApiServicesAppReportsdevicesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportsDevicesApi();
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
    var result = api_instance.apiServicesAppReportsdevicesGetallGet(filter, serialNumberFilter, qRCodeFilter, bssIdFilter, ssIdFilter, uuIdFilter, majorFilter, minorFilter, nameFilter, deviceTypeTitleFilter, deviceStatusIdFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling ReportsDevicesApi->apiServicesAppReportsdevicesGetallGet: $e\n");
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

# **apiServicesAppReportsdevicesGetdevicestoexcelGet**
> FileDto apiServicesAppReportsdevicesGetdevicestoexcelGet(filter, serialNumberFilter, qRCodeFilter, bssIdFilter, ssIdFilter, uuIdFilter, majorFilter, minorFilter, nameFilter, deviceTypeTitleFilter, deviceStatusIdFilter)

ApiServicesAppReportsdevicesGetdevicestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportsDevicesApi();
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
    var result = api_instance.apiServicesAppReportsdevicesGetdevicestoexcelGet(filter, serialNumberFilter, qRCodeFilter, bssIdFilter, ssIdFilter, uuIdFilter, majorFilter, minorFilter, nameFilter, deviceTypeTitleFilter, deviceStatusIdFilter);
    print(result);
} catch (e) {
    print("Exception when calling ReportsDevicesApi->apiServicesAppReportsdevicesGetdevicestoexcelGet: $e\n");
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

