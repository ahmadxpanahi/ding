# swagger.api.RequestsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppRequestsApproverequestsPost**](RequestsApi.md#apiServicesAppRequestsApproverequestsPost) | **POST** /api/services/app/Requests/ApproveRequests | ApiServicesAppRequestsApproverequestsPost
[**apiServicesAppRequestsCreateoreditPost**](RequestsApi.md#apiServicesAppRequestsCreateoreditPost) | **POST** /api/services/app/Requests/CreateOrEdit | ApiServicesAppRequestsCreateoreditPost
[**apiServicesAppRequestsDeleteDelete**](RequestsApi.md#apiServicesAppRequestsDeleteDelete) | **DELETE** /api/services/app/Requests/Delete | ApiServicesAppRequestsDeleteDelete
[**apiServicesAppRequestsGetallGet**](RequestsApi.md#apiServicesAppRequestsGetallGet) | **GET** /api/services/app/Requests/GetAll | ApiServicesAppRequestsGetallGet
[**apiServicesAppRequestsGetalluserforlookuptableGet**](RequestsApi.md#apiServicesAppRequestsGetalluserforlookuptableGet) | **GET** /api/services/app/Requests/GetAllUserForLookupTable | ApiServicesAppRequestsGetalluserforlookuptableGet
[**apiServicesAppRequestsGetrequestforeditGet**](RequestsApi.md#apiServicesAppRequestsGetrequestforeditGet) | **GET** /api/services/app/Requests/GetRequestForEdit | ApiServicesAppRequestsGetrequestforeditGet
[**apiServicesAppRequestsGetrequestforviewGet**](RequestsApi.md#apiServicesAppRequestsGetrequestforviewGet) | **GET** /api/services/app/Requests/GetRequestForView | ApiServicesAppRequestsGetrequestforviewGet
[**apiServicesAppRequestsGetrequeststoexcelGet**](RequestsApi.md#apiServicesAppRequestsGetrequeststoexcelGet) | **GET** /api/services/app/Requests/GetRequestsToExcel | ApiServicesAppRequestsGetrequeststoexcelGet
[**apiServicesAppRequestsGetuserrequestsbydateGet**](RequestsApi.md#apiServicesAppRequestsGetuserrequestsbydateGet) | **GET** /api/services/app/Requests/GetUserRequestsByDate | ApiServicesAppRequestsGetuserrequestsbydateGet
[**apiServicesAppRequestsRejectrequestsPost**](RequestsApi.md#apiServicesAppRequestsRejectrequestsPost) | **POST** /api/services/app/Requests/RejectRequests | ApiServicesAppRequestsRejectrequestsPost


# **apiServicesAppRequestsApproverequestsPost**
> apiServicesAppRequestsApproverequestsPost(body)

ApiServicesAppRequestsApproverequestsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var body = [new List&lt;GetRequestForViewDto&gt;()]; // List<GetRequestForViewDto> | 

try { 
    api_instance.apiServicesAppRequestsApproverequestsPost(body);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsApproverequestsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;GetRequestForViewDto&gt;**](GetRequestForViewDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRequestsCreateoreditPost**
> apiServicesAppRequestsCreateoreditPost(body)

ApiServicesAppRequestsCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var body = new CreateOrEditRequestDto(); // CreateOrEditRequestDto | 

try { 
    api_instance.apiServicesAppRequestsCreateoreditPost(body);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditRequestDto**](CreateOrEditRequestDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRequestsDeleteDelete**
> apiServicesAppRequestsDeleteDelete(id)

ApiServicesAppRequestsDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppRequestsDeleteDelete(id);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsDeleteDelete: $e\n");
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

# **apiServicesAppRequestsGetallGet**
> PagedResultDtoOfGetRequestForViewDto apiServicesAppRequestsGetallGet(filter, requestTypeFilter, fromFilter, toFilter, commentFilter, statusFilter, userNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppRequestsGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var filter = filter_example; // String | 
var requestTypeFilter = 56; // int | 
var fromFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var toFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var commentFilter = commentFilter_example; // String | 
var statusFilter = 56; // int | 
var userNameFilter = userNameFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppRequestsGetallGet(filter, requestTypeFilter, fromFilter, toFilter, commentFilter, statusFilter, userNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **requestTypeFilter** | **int**|  | [optional] 
 **fromFilter** | **DateTime**|  | [optional] 
 **toFilter** | **DateTime**|  | [optional] 
 **commentFilter** | **String**|  | [optional] 
 **statusFilter** | **int**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetRequestForViewDto**](PagedResultDtoOfGetRequestForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRequestsGetalluserforlookuptableGet**
> PagedResultDtoOfRequestUserLookupTableDto apiServicesAppRequestsGetalluserforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppRequestsGetalluserforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppRequestsGetalluserforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsGetalluserforlookuptableGet: $e\n");
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

[**PagedResultDtoOfRequestUserLookupTableDto**](PagedResultDtoOfRequestUserLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRequestsGetrequestforeditGet**
> GetRequestForEditOutput apiServicesAppRequestsGetrequestforeditGet(id)

ApiServicesAppRequestsGetrequestforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppRequestsGetrequestforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsGetrequestforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetRequestForEditOutput**](GetRequestForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRequestsGetrequestforviewGet**
> GetRequestForViewDto apiServicesAppRequestsGetrequestforviewGet(id)

ApiServicesAppRequestsGetrequestforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppRequestsGetrequestforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsGetrequestforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetRequestForViewDto**](GetRequestForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRequestsGetrequeststoexcelGet**
> FileDto apiServicesAppRequestsGetrequeststoexcelGet(filter, requestTypeFilter, fromFilter, toFilter, commentFilter, statusFilter, userNameFilter)

ApiServicesAppRequestsGetrequeststoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var filter = filter_example; // String | 
var requestTypeFilter = 56; // int | 
var fromFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var toFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var commentFilter = commentFilter_example; // String | 
var statusFilter = 56; // int | 
var userNameFilter = userNameFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppRequestsGetrequeststoexcelGet(filter, requestTypeFilter, fromFilter, toFilter, commentFilter, statusFilter, userNameFilter);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsGetrequeststoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **requestTypeFilter** | **int**|  | [optional] 
 **fromFilter** | **DateTime**|  | [optional] 
 **toFilter** | **DateTime**|  | [optional] 
 **commentFilter** | **String**|  | [optional] 
 **statusFilter** | **int**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRequestsGetuserrequestsbydateGet**
> List<GetRequestForViewDto> apiServicesAppRequestsGetuserrequestsbydateGet(userId, dateFrom, dateTo)

ApiServicesAppRequestsGetuserrequestsbydateGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var userId = 789; // int | 
var dateFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
var dateTo = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppRequestsGetuserrequestsbydateGet(userId, dateFrom, dateTo);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsGetuserrequestsbydateGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 
 **dateFrom** | **DateTime**|  | [optional] 
 **dateTo** | **DateTime**|  | [optional] 

### Return type

[**List<GetRequestForViewDto>**](GetRequestForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRequestsRejectrequestsPost**
> apiServicesAppRequestsRejectrequestsPost(body)

ApiServicesAppRequestsRejectrequestsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RequestsApi();
var body = [new List&lt;GetRequestForViewDto&gt;()]; // List<GetRequestForViewDto> | 

try { 
    api_instance.apiServicesAppRequestsRejectrequestsPost(body);
} catch (e) {
    print("Exception when calling RequestsApi->apiServicesAppRequestsRejectrequestsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;GetRequestForViewDto&gt;**](GetRequestForViewDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

