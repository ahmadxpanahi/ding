# swagger.api.SupportsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppSupportsConfirmpaymentPost**](SupportsApi.md#apiServicesAppSupportsConfirmpaymentPost) | **POST** /api/services/app/Supports/ConfirmPayment | ApiServicesAppSupportsConfirmpaymentPost
[**apiServicesAppSupportsCreateoreditPost**](SupportsApi.md#apiServicesAppSupportsCreateoreditPost) | **POST** /api/services/app/Supports/CreateOrEdit | ApiServicesAppSupportsCreateoreditPost
[**apiServicesAppSupportsGetallGet**](SupportsApi.md#apiServicesAppSupportsGetallGet) | **GET** /api/services/app/Supports/GetAll | ApiServicesAppSupportsGetallGet
[**apiServicesAppSupportsGetalldeviceforlookuptableGet**](SupportsApi.md#apiServicesAppSupportsGetalldeviceforlookuptableGet) | **GET** /api/services/app/Supports/GetAllDeviceForLookupTable | ApiServicesAppSupportsGetalldeviceforlookuptableGet
[**apiServicesAppSupportsGetallsupportforlookuptableGet**](SupportsApi.md#apiServicesAppSupportsGetallsupportforlookuptableGet) | **GET** /api/services/app/Supports/GetAllSupportForLookupTable | ApiServicesAppSupportsGetallsupportforlookuptableGet
[**apiServicesAppSupportsGetalluserforlookuptableGet**](SupportsApi.md#apiServicesAppSupportsGetalluserforlookuptableGet) | **GET** /api/services/app/Supports/GetAllUserForLookupTable | ApiServicesAppSupportsGetalluserforlookuptableGet
[**apiServicesAppSupportsGetsupportforviewGet**](SupportsApi.md#apiServicesAppSupportsGetsupportforviewGet) | **GET** /api/services/app/Supports/GetSupportForView | ApiServicesAppSupportsGetsupportforviewGet
[**apiServicesAppSupportsGetsupportstoexcelGet**](SupportsApi.md#apiServicesAppSupportsGetsupportstoexcelGet) | **GET** /api/services/app/Supports/GetSupportsToExcel | ApiServicesAppSupportsGetsupportstoexcelGet
[**apiServicesAppSupportsRejectPost**](SupportsApi.md#apiServicesAppSupportsRejectPost) | **POST** /api/services/app/Supports/Reject | ApiServicesAppSupportsRejectPost
[**apiServicesAppSupportsReplyPost**](SupportsApi.md#apiServicesAppSupportsReplyPost) | **POST** /api/services/app/Supports/Reply | ApiServicesAppSupportsReplyPost


# **apiServicesAppSupportsConfirmpaymentPost**
?> apiServicesAppSupportsConfirmpaymentPost(id)

ApiServicesAppSupportsConfirmpaymentPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppSupportsConfirmpaymentPost(id);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsConfirmpaymentPost: $e\n");
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

# **apiServicesAppSupportsCreateoreditPost**
?> apiServicesAppSupportsCreateoreditPost(body)

ApiServicesAppSupportsCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var body = new CreateOrEditSupportDto(); // CreateOrEditSupportDto | 

try { 
    api_instance.apiServicesAppSupportsCreateoreditPost(body);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditSupportDto**](CreateOrEditSupportDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppSupportsGetallGet**
> PagedResultDtoOfGetSupportForViewDto apiServicesAppSupportsGetallGet(filter, tenantIdFilter, supportParentId, requestSubjectFilter, requestDescriptionFilter, requestTypeFilter, requestStatusFilter, additionalDescriptionFilter, deviceNameFilter, userNameFilter, supportRequestSubjectFilter, creationDateStart, creationDateEnd, sorting, skipCount, maxResultCount)

ApiServicesAppSupportsGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var filter = filter_example; // String | 
var tenantIdFilter = 56; // int | 
var supportParentId = 789; // int | 
var requestSubjectFilter = requestSubjectFilter_example; // String | 
var requestDescriptionFilter = requestDescriptionFilter_example; // String | 
var requestTypeFilter = 56; // int | 
var requestStatusFilter = 56; // int | 
var additionalDescriptionFilter = additionalDescriptionFilter_example; // String | 
var deviceNameFilter = deviceNameFilter_example; // String | 
var userNameFilter = userNameFilter_example; // String | 
var supportRequestSubjectFilter = supportRequestSubjectFilter_example; // String | 
var creationDateStart = 2013-10-20T19:20:30+01:00; // DateTime | 
var creationDateEnd = 2013-10-20T19:20:30+01:00; // DateTime | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppSupportsGetallGet(filter, tenantIdFilter, supportParentId, requestSubjectFilter, requestDescriptionFilter, requestTypeFilter, requestStatusFilter, additionalDescriptionFilter, deviceNameFilter, userNameFilter, supportRequestSubjectFilter, creationDateStart, creationDateEnd, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **tenantIdFilter** | **int**|  | [optional] 
 **supportParentId** | **int**|  | [optional] 
 **requestSubjectFilter** | **String**|  | [optional] 
 **requestDescriptionFilter** | **String**|  | [optional] 
 **requestTypeFilter** | **int**|  | [optional] 
 **requestStatusFilter** | **int**|  | [optional] 
 **additionalDescriptionFilter** | **String**|  | [optional] 
 **deviceNameFilter** | **String**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **supportRequestSubjectFilter** | **String**|  | [optional] 
 **creationDateStart** | **DateTime**|  | [optional] 
 **creationDateEnd** | **DateTime**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetSupportForViewDto**](PagedResultDtoOfGetSupportForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppSupportsGetalldeviceforlookuptableGet**
> PagedResultDtoOfSupportDeviceLookupTableDto apiServicesAppSupportsGetalldeviceforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppSupportsGetalldeviceforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppSupportsGetalldeviceforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsGetalldeviceforlookuptableGet: $e\n");
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

[**PagedResultDtoOfSupportDeviceLookupTableDto**](PagedResultDtoOfSupportDeviceLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppSupportsGetallsupportforlookuptableGet**
> PagedResultDtoOfSupportSupportLookupTableDto apiServicesAppSupportsGetallsupportforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppSupportsGetallsupportforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppSupportsGetallsupportforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsGetallsupportforlookuptableGet: $e\n");
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

[**PagedResultDtoOfSupportSupportLookupTableDto**](PagedResultDtoOfSupportSupportLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppSupportsGetalluserforlookuptableGet**
> PagedResultDtoOfSupportUserLookupTableDto apiServicesAppSupportsGetalluserforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppSupportsGetalluserforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppSupportsGetalluserforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsGetalluserforlookuptableGet: $e\n");
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

[**PagedResultDtoOfSupportUserLookupTableDto**](PagedResultDtoOfSupportUserLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppSupportsGetsupportforviewGet**
> GetSupportForViewDto apiServicesAppSupportsGetsupportforviewGet(id)

ApiServicesAppSupportsGetsupportforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppSupportsGetsupportforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsGetsupportforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetSupportForViewDto**](GetSupportForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppSupportsGetsupportstoexcelGet**
> FileDto apiServicesAppSupportsGetsupportstoexcelGet(filter, requestSubjectFilter, requestDescriptionFilter, requestTypeFilter, requestStatusFilter, additionalDescriptionFilter, deviceNameFilter, userNameFilter, supportRequestSubjectFilter, creationDateStart, creationDateEnd)

ApiServicesAppSupportsGetsupportstoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var filter = filter_example; // String | 
var requestSubjectFilter = requestSubjectFilter_example; // String | 
var requestDescriptionFilter = requestDescriptionFilter_example; // String | 
var requestTypeFilter = 56; // int | 
var requestStatusFilter = 56; // int | 
var additionalDescriptionFilter = additionalDescriptionFilter_example; // String | 
var deviceNameFilter = deviceNameFilter_example; // String | 
var userNameFilter = userNameFilter_example; // String | 
var supportRequestSubjectFilter = supportRequestSubjectFilter_example; // String | 
var creationDateStart = 2013-10-20T19:20:30+01:00; // DateTime | 
var creationDateEnd = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppSupportsGetsupportstoexcelGet(filter, requestSubjectFilter, requestDescriptionFilter, requestTypeFilter, requestStatusFilter, additionalDescriptionFilter, deviceNameFilter, userNameFilter, supportRequestSubjectFilter, creationDateStart, creationDateEnd);
    print(result);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsGetsupportstoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **requestSubjectFilter** | **String**|  | [optional] 
 **requestDescriptionFilter** | **String**|  | [optional] 
 **requestTypeFilter** | **int**|  | [optional] 
 **requestStatusFilter** | **int**|  | [optional] 
 **additionalDescriptionFilter** | **String**|  | [optional] 
 **deviceNameFilter** | **String**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **supportRequestSubjectFilter** | **String**|  | [optional] 
 **creationDateStart** | **DateTime**|  | [optional] 
 **creationDateEnd** | **DateTime**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppSupportsRejectPost**
?> apiServicesAppSupportsRejectPost(id)

ApiServicesAppSupportsRejectPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppSupportsRejectPost(id);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsRejectPost: $e\n");
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

# **apiServicesAppSupportsReplyPost**
?> apiServicesAppSupportsReplyPost(body)

ApiServicesAppSupportsReplyPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SupportsApi();
var body = new CreateOrEditSupportDto(); // CreateOrEditSupportDto | 

try { 
    api_instance.apiServicesAppSupportsReplyPost(body);
} catch (e) {
    print("Exception when calling SupportsApi->apiServicesAppSupportsReplyPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditSupportDto**](CreateOrEditSupportDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

