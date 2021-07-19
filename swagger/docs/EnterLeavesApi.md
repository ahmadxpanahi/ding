# swagger.api.EnterLeavesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppEnterleavesApproverequestsPost**](EnterLeavesApi.md#apiServicesAppEnterleavesApproverequestsPost) | **POST** /api/services/app/EnterLeaves/ApproveRequests | ApiServicesAppEnterleavesApproverequestsPost
[**apiServicesAppEnterleavesCreateoreditPost**](EnterLeavesApi.md#apiServicesAppEnterleavesCreateoreditPost) | **POST** /api/services/app/EnterLeaves/CreateOrEdit | ApiServicesAppEnterleavesCreateoreditPost
[**apiServicesAppEnterleavesDeleteDelete**](EnterLeavesApi.md#apiServicesAppEnterleavesDeleteDelete) | **DELETE** /api/services/app/EnterLeaves/Delete | ApiServicesAppEnterleavesDeleteDelete
[**apiServicesAppEnterleavesGetallGet**](EnterLeavesApi.md#apiServicesAppEnterleavesGetallGet) | **GET** /api/services/app/EnterLeaves/GetAll | ApiServicesAppEnterleavesGetallGet
[**apiServicesAppEnterleavesGetenterleaveforeditGet**](EnterLeavesApi.md#apiServicesAppEnterleavesGetenterleaveforeditGet) | **GET** /api/services/app/EnterLeaves/GetEnterLeaveForEdit | ApiServicesAppEnterleavesGetenterleaveforeditGet
[**apiServicesAppEnterleavesGetenterleaveforviewGet**](EnterLeavesApi.md#apiServicesAppEnterleavesGetenterleaveforviewGet) | **GET** /api/services/app/EnterLeaves/GetEnterLeaveForView | ApiServicesAppEnterleavesGetenterleaveforviewGet
[**apiServicesAppEnterleavesGetenterleavestoexcelGet**](EnterLeavesApi.md#apiServicesAppEnterleavesGetenterleavestoexcelGet) | **GET** /api/services/app/EnterLeaves/GetEnterLeavesToExcel | ApiServicesAppEnterleavesGetenterleavestoexcelGet
[**apiServicesAppEnterleavesRejectrequestsPost**](EnterLeavesApi.md#apiServicesAppEnterleavesRejectrequestsPost) | **POST** /api/services/app/EnterLeaves/RejectRequests | ApiServicesAppEnterleavesRejectrequestsPost


# **apiServicesAppEnterleavesApproverequestsPost**
?> apiServicesAppEnterleavesApproverequestsPost(body)

ApiServicesAppEnterleavesApproverequestsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterLeavesApi();
var body = [new List&lt;GetEnterLeaveForViewDto&gt;()]; // List<GetEnterLeaveForViewDto> | 

try { 
    api_instance.apiServicesAppEnterleavesApproverequestsPost(body);
} catch (e) {
    print("Exception when calling EnterLeavesApi->apiServicesAppEnterleavesApproverequestsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;GetEnterLeaveForViewDto&gt;**](GetEnterLeaveForViewDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEnterleavesCreateoreditPost**
?> apiServicesAppEnterleavesCreateoreditPost(body)

ApiServicesAppEnterleavesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterLeavesApi();
var body = new CreateOrEditEnterLeaveDto(); // CreateOrEditEnterLeaveDto | 

try { 
    api_instance.apiServicesAppEnterleavesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling EnterLeavesApi->apiServicesAppEnterleavesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditEnterLeaveDto**](CreateOrEditEnterLeaveDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEnterleavesDeleteDelete**
?> apiServicesAppEnterleavesDeleteDelete(id)

ApiServicesAppEnterleavesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterLeavesApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppEnterleavesDeleteDelete(id);
} catch (e) {
    print("Exception when calling EnterLeavesApi->apiServicesAppEnterleavesDeleteDelete: $e\n");
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

# **apiServicesAppEnterleavesGetallGet**
> PagedResultDtoOfGetEnterLeaveForViewDto apiServicesAppEnterleavesGetallGet(filter, enterLeaveTypeFilter, maxOccurDateFilter, minOccurDateFilter, statusFilter, sorting, skipCount, maxResultCount)

ApiServicesAppEnterleavesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterLeavesApi();
var filter = filter_example; // String | 
var enterLeaveTypeFilter = 56; // int | 
var maxOccurDateFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var minOccurDateFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var statusFilter = 56; // int | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEnterleavesGetallGet(filter, enterLeaveTypeFilter, maxOccurDateFilter, minOccurDateFilter, statusFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling EnterLeavesApi->apiServicesAppEnterleavesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **enterLeaveTypeFilter** | **int**|  | [optional] 
 **maxOccurDateFilter** | **DateTime**|  | [optional] 
 **minOccurDateFilter** | **DateTime**|  | [optional] 
 **statusFilter** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetEnterLeaveForViewDto**](PagedResultDtoOfGetEnterLeaveForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEnterleavesGetenterleaveforeditGet**
> GetEnterLeaveForEditOutput apiServicesAppEnterleavesGetenterleaveforeditGet(id)

ApiServicesAppEnterleavesGetenterleaveforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterLeavesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppEnterleavesGetenterleaveforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling EnterLeavesApi->apiServicesAppEnterleavesGetenterleaveforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetEnterLeaveForEditOutput**](GetEnterLeaveForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEnterleavesGetenterleaveforviewGet**
> GetEnterLeaveForViewDto apiServicesAppEnterleavesGetenterleaveforviewGet(id)

ApiServicesAppEnterleavesGetenterleaveforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterLeavesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppEnterleavesGetenterleaveforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling EnterLeavesApi->apiServicesAppEnterleavesGetenterleaveforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetEnterLeaveForViewDto**](GetEnterLeaveForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEnterleavesGetenterleavestoexcelGet**
> FileDto apiServicesAppEnterleavesGetenterleavestoexcelGet(filter, enterLeaveTypeFilter, maxOccurDateFilter, minOccurDateFilter, statusFilter)

ApiServicesAppEnterleavesGetenterleavestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterLeavesApi();
var filter = filter_example; // String | 
var enterLeaveTypeFilter = 56; // int | 
var maxOccurDateFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var minOccurDateFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var statusFilter = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEnterleavesGetenterleavestoexcelGet(filter, enterLeaveTypeFilter, maxOccurDateFilter, minOccurDateFilter, statusFilter);
    print(result);
} catch (e) {
    print("Exception when calling EnterLeavesApi->apiServicesAppEnterleavesGetenterleavestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **enterLeaveTypeFilter** | **int**|  | [optional] 
 **maxOccurDateFilter** | **DateTime**|  | [optional] 
 **minOccurDateFilter** | **DateTime**|  | [optional] 
 **statusFilter** | **int**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEnterleavesRejectrequestsPost**
?> apiServicesAppEnterleavesRejectrequestsPost(body)

ApiServicesAppEnterleavesRejectrequestsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterLeavesApi();
var body = [new List&lt;GetEnterLeaveForViewDto&gt;()]; // List<GetEnterLeaveForViewDto> | 

try { 
    api_instance.apiServicesAppEnterleavesRejectrequestsPost(body);
} catch (e) {
    print("Exception when calling EnterLeavesApi->apiServicesAppEnterleavesRejectrequestsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;GetEnterLeaveForViewDto&gt;**](GetEnterLeaveForViewDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

