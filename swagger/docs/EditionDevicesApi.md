# swagger.api.EditionDevicesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppEditiondevicesCreatePost**](EditionDevicesApi.md#apiServicesAppEditiondevicesCreatePost) | **POST** /api/services/app/EditionDevices/Create | ApiServicesAppEditiondevicesCreatePost
[**apiServicesAppEditiondevicesDeleteDelete**](EditionDevicesApi.md#apiServicesAppEditiondevicesDeleteDelete) | **DELETE** /api/services/app/EditionDevices/Delete | ApiServicesAppEditiondevicesDeleteDelete
[**apiServicesAppEditiondevicesGetallGet**](EditionDevicesApi.md#apiServicesAppEditiondevicesGetallGet) | **GET** /api/services/app/EditionDevices/GetAll | ApiServicesAppEditiondevicesGetallGet
[**apiServicesAppEditiondevicesGetallavailabledevicesGet**](EditionDevicesApi.md#apiServicesAppEditiondevicesGetallavailabledevicesGet) | **GET** /api/services/app/EditionDevices/GetAllAvailableDevices | ApiServicesAppEditiondevicesGetallavailabledevicesGet
[**apiServicesAppEditiondevicesGetallpurchasingresourceforlookuptableGet**](EditionDevicesApi.md#apiServicesAppEditiondevicesGetallpurchasingresourceforlookuptableGet) | **GET** /api/services/app/EditionDevices/GetAllPurchasingResourceForLookupTable | ApiServicesAppEditiondevicesGetallpurchasingresourceforlookuptableGet
[**apiServicesAppEditiondevicesGetallsubscribableeditionforlookuptableGet**](EditionDevicesApi.md#apiServicesAppEditiondevicesGetallsubscribableeditionforlookuptableGet) | **GET** /api/services/app/EditionDevices/GetAllSubscribableEditionForLookupTable | ApiServicesAppEditiondevicesGetallsubscribableeditionforlookuptableGet
[**apiServicesAppEditiondevicesGeteditiondevicebydeviceidGet**](EditionDevicesApi.md#apiServicesAppEditiondevicesGeteditiondevicebydeviceidGet) | **GET** /api/services/app/EditionDevices/GetEditionDeviceByDeviceId | ApiServicesAppEditiondevicesGeteditiondevicebydeviceidGet
[**apiServicesAppEditiondevicesGeteditiondeviceforeditGet**](EditionDevicesApi.md#apiServicesAppEditiondevicesGeteditiondeviceforeditGet) | **GET** /api/services/app/EditionDevices/GetEditionDeviceForEdit | ApiServicesAppEditiondevicesGeteditiondeviceforeditGet
[**apiServicesAppEditiondevicesGeteditiondeviceforviewGet**](EditionDevicesApi.md#apiServicesAppEditiondevicesGeteditiondeviceforviewGet) | **GET** /api/services/app/EditionDevices/GetEditionDeviceForView | ApiServicesAppEditiondevicesGeteditiondeviceforviewGet
[**apiServicesAppEditiondevicesGeteditiondevicestoexcelGet**](EditionDevicesApi.md#apiServicesAppEditiondevicesGeteditiondevicestoexcelGet) | **GET** /api/services/app/EditionDevices/GetEditionDevicesToExcel | ApiServicesAppEditiondevicesGeteditiondevicestoexcelGet
[**apiServicesAppEditiondevicesRemovealleditionfromdeviceDelete**](EditionDevicesApi.md#apiServicesAppEditiondevicesRemovealleditionfromdeviceDelete) | **DELETE** /api/services/app/EditionDevices/RemoveAllEditionFromDevice | ApiServicesAppEditiondevicesRemovealleditionfromdeviceDelete
[**apiServicesAppEditiondevicesSavefeaturesPost**](EditionDevicesApi.md#apiServicesAppEditiondevicesSavefeaturesPost) | **POST** /api/services/app/EditionDevices/SaveFeatures | ApiServicesAppEditiondevicesSavefeaturesPost
[**apiServicesAppEditiondevicesUpgradefeaturesPost**](EditionDevicesApi.md#apiServicesAppEditiondevicesUpgradefeaturesPost) | **POST** /api/services/app/EditionDevices/UpgradeFeatures | ApiServicesAppEditiondevicesUpgradefeaturesPost


# **apiServicesAppEditiondevicesCreatePost**
> apiServicesAppEditiondevicesCreatePost(body)

ApiServicesAppEditiondevicesCreatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var body = new CreateEditionDeviceDto(); // CreateEditionDeviceDto | 

try { 
    api_instance.apiServicesAppEditiondevicesCreatePost(body);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesCreatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateEditionDeviceDto**](CreateEditionDeviceDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesDeleteDelete**
> apiServicesAppEditiondevicesDeleteDelete(id)

ApiServicesAppEditiondevicesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppEditiondevicesDeleteDelete(id);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesDeleteDelete: $e\n");
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

# **apiServicesAppEditiondevicesGetallGet**
> PagedResultDtoOfGetEditionDeviceForViewDto apiServicesAppEditiondevicesGetallGet(filter, subscribableEditionDisplayNameFilter, deviceSerialNumberFilter, purchasingResourceTitleFilter, sorting, skipCount, maxResultCount)

ApiServicesAppEditiondevicesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var filter = filter_example; // String | 
var subscribableEditionDisplayNameFilter = subscribableEditionDisplayNameFilter_example; // String | 
var deviceSerialNumberFilter = deviceSerialNumberFilter_example; // String | 
var purchasingResourceTitleFilter = purchasingResourceTitleFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEditiondevicesGetallGet(filter, subscribableEditionDisplayNameFilter, deviceSerialNumberFilter, purchasingResourceTitleFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **subscribableEditionDisplayNameFilter** | **String**|  | [optional] 
 **deviceSerialNumberFilter** | **String**|  | [optional] 
 **purchasingResourceTitleFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetEditionDeviceForViewDto**](PagedResultDtoOfGetEditionDeviceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesGetallavailabledevicesGet**
> ListResultDtoOfAllAvailableDevicesDto apiServicesAppEditiondevicesGetallavailabledevicesGet()

ApiServicesAppEditiondevicesGetallavailabledevicesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();

try { 
    var result = api_instance.apiServicesAppEditiondevicesGetallavailabledevicesGet();
    print(result);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesGetallavailabledevicesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfAllAvailableDevicesDto**](ListResultDtoOfAllAvailableDevicesDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesGetallpurchasingresourceforlookuptableGet**
> PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto apiServicesAppEditiondevicesGetallpurchasingresourceforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppEditiondevicesGetallpurchasingresourceforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEditiondevicesGetallpurchasingresourceforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesGetallpurchasingresourceforlookuptableGet: $e\n");
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

[**PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto**](PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesGetallsubscribableeditionforlookuptableGet**
> PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto apiServicesAppEditiondevicesGetallsubscribableeditionforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppEditiondevicesGetallsubscribableeditionforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEditiondevicesGetallsubscribableeditionforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesGetallsubscribableeditionforlookuptableGet: $e\n");
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

[**PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto**](PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesGeteditiondevicebydeviceidGet**
> GetEditionDeviceForViewDto apiServicesAppEditiondevicesGeteditiondevicebydeviceidGet(deviceId)

ApiServicesAppEditiondevicesGeteditiondevicebydeviceidGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var deviceId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppEditiondevicesGeteditiondevicebydeviceidGet(deviceId);
    print(result);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesGeteditiondevicebydeviceidGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **int**|  | [optional] 

### Return type

[**GetEditionDeviceForViewDto**](GetEditionDeviceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesGeteditiondeviceforeditGet**
> EditEditionDeviceFeaturesDto apiServicesAppEditiondevicesGeteditiondeviceforeditGet(id)

ApiServicesAppEditiondevicesGeteditiondeviceforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppEditiondevicesGeteditiondeviceforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesGeteditiondeviceforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**EditEditionDeviceFeaturesDto**](EditEditionDeviceFeaturesDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesGeteditiondeviceforviewGet**
> GetEditionDeviceForViewDto apiServicesAppEditiondevicesGeteditiondeviceforviewGet(id)

ApiServicesAppEditiondevicesGeteditiondeviceforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppEditiondevicesGeteditiondeviceforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesGeteditiondeviceforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetEditionDeviceForViewDto**](GetEditionDeviceForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesGeteditiondevicestoexcelGet**
> FileDto apiServicesAppEditiondevicesGeteditiondevicestoexcelGet(filter, subscribableEditionDisplayNameFilter, deviceSerialNumberFilter, purchasingResourceTitleFilter)

ApiServicesAppEditiondevicesGeteditiondevicestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var filter = filter_example; // String | 
var subscribableEditionDisplayNameFilter = subscribableEditionDisplayNameFilter_example; // String | 
var deviceSerialNumberFilter = deviceSerialNumberFilter_example; // String | 
var purchasingResourceTitleFilter = purchasingResourceTitleFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppEditiondevicesGeteditiondevicestoexcelGet(filter, subscribableEditionDisplayNameFilter, deviceSerialNumberFilter, purchasingResourceTitleFilter);
    print(result);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesGeteditiondevicestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **subscribableEditionDisplayNameFilter** | **String**|  | [optional] 
 **deviceSerialNumberFilter** | **String**|  | [optional] 
 **purchasingResourceTitleFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesRemovealleditionfromdeviceDelete**
> apiServicesAppEditiondevicesRemovealleditionfromdeviceDelete(deviceId)

ApiServicesAppEditiondevicesRemovealleditionfromdeviceDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var deviceId = 789; // int | 

try { 
    api_instance.apiServicesAppEditiondevicesRemovealleditionfromdeviceDelete(deviceId);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesRemovealleditionfromdeviceDelete: $e\n");
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

# **apiServicesAppEditiondevicesSavefeaturesPost**
> apiServicesAppEditiondevicesSavefeaturesPost(body)

ApiServicesAppEditiondevicesSavefeaturesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var body = new EditEditionDeviceFeaturesDto(); // EditEditionDeviceFeaturesDto | 

try { 
    api_instance.apiServicesAppEditiondevicesSavefeaturesPost(body);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesSavefeaturesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EditEditionDeviceFeaturesDto**](EditEditionDeviceFeaturesDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditiondevicesUpgradefeaturesPost**
> apiServicesAppEditiondevicesUpgradefeaturesPost(body)

ApiServicesAppEditiondevicesUpgradefeaturesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionDevicesApi();
var body = new EditEditionDeviceFeaturesDto(); // EditEditionDeviceFeaturesDto | 

try { 
    api_instance.apiServicesAppEditiondevicesUpgradefeaturesPost(body);
} catch (e) {
    print("Exception when calling EditionDevicesApi->apiServicesAppEditiondevicesUpgradefeaturesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EditEditionDeviceFeaturesDto**](EditEditionDeviceFeaturesDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

