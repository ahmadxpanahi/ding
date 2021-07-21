# swagger.api.AuditLogApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppAuditlogGetauditlogsGet**](AuditLogApi.md#apiServicesAppAuditlogGetauditlogsGet) | **GET** /api/services/app/AuditLog/GetAuditLogs | ApiServicesAppAuditlogGetauditlogsGet
[**apiServicesAppAuditlogGetauditlogstoexcelGet**](AuditLogApi.md#apiServicesAppAuditlogGetauditlogstoexcelGet) | **GET** /api/services/app/AuditLog/GetAuditLogsToExcel | ApiServicesAppAuditlogGetauditlogstoexcelGet
[**apiServicesAppAuditlogGetentitychangesGet**](AuditLogApi.md#apiServicesAppAuditlogGetentitychangesGet) | **GET** /api/services/app/AuditLog/GetEntityChanges | ApiServicesAppAuditlogGetentitychangesGet
[**apiServicesAppAuditlogGetentitychangestoexcelGet**](AuditLogApi.md#apiServicesAppAuditlogGetentitychangestoexcelGet) | **GET** /api/services/app/AuditLog/GetEntityChangesToExcel | ApiServicesAppAuditlogGetentitychangestoexcelGet
[**apiServicesAppAuditlogGetentityhistoryobjecttypesGet**](AuditLogApi.md#apiServicesAppAuditlogGetentityhistoryobjecttypesGet) | **GET** /api/services/app/AuditLog/GetEntityHistoryObjectTypes | ApiServicesAppAuditlogGetentityhistoryobjecttypesGet
[**apiServicesAppAuditlogGetentitypropertychangesGet**](AuditLogApi.md#apiServicesAppAuditlogGetentitypropertychangesGet) | **GET** /api/services/app/AuditLog/GetEntityPropertyChanges | ApiServicesAppAuditlogGetentitypropertychangesGet
[**apiServicesAppAuditlogGetentitytypechangesGet**](AuditLogApi.md#apiServicesAppAuditlogGetentitytypechangesGet) | **GET** /api/services/app/AuditLog/GetEntityTypeChanges | ApiServicesAppAuditlogGetentitytypechangesGet


# **apiServicesAppAuditlogGetauditlogsGet**
> PagedResultDtoOfAuditLogListDto apiServicesAppAuditlogGetauditlogsGet(startDate, endDate, userName, serviceName, methodName, browserInfo, hasException, minExecutionDuration, maxExecutionDuration, sorting, maxResultCount, skipCount)

ApiServicesAppAuditlogGetauditlogsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuditLogApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var userName = userName_example; // String | 
var serviceName = serviceName_example; // String | 
var methodName = methodName_example; // String | 
var browserInfo = browserInfo_example; // String | 
var hasException = true; // bool | 
var minExecutionDuration = 56; // int | 
var maxExecutionDuration = 56; // int | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppAuditlogGetauditlogsGet(startDate, endDate, userName, serviceName, methodName, browserInfo, hasException, minExecutionDuration, maxExecutionDuration, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling AuditLogApi->apiServicesAppAuditlogGetauditlogsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **userName** | **String**|  | [optional] 
 **serviceName** | **String**|  | [optional] 
 **methodName** | **String**|  | [optional] 
 **browserInfo** | **String**|  | [optional] 
 **hasException** | **bool**|  | [optional] 
 **minExecutionDuration** | **int**|  | [optional] 
 **maxExecutionDuration** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfAuditLogListDto**](PagedResultDtoOfAuditLogListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAuditlogGetauditlogstoexcelGet**
> FileDto apiServicesAppAuditlogGetauditlogstoexcelGet(startDate, endDate, userName, serviceName, methodName, browserInfo, hasException, minExecutionDuration, maxExecutionDuration, sorting, maxResultCount, skipCount)

ApiServicesAppAuditlogGetauditlogstoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuditLogApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var userName = userName_example; // String | 
var serviceName = serviceName_example; // String | 
var methodName = methodName_example; // String | 
var browserInfo = browserInfo_example; // String | 
var hasException = true; // bool | 
var minExecutionDuration = 56; // int | 
var maxExecutionDuration = 56; // int | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppAuditlogGetauditlogstoexcelGet(startDate, endDate, userName, serviceName, methodName, browserInfo, hasException, minExecutionDuration, maxExecutionDuration, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling AuditLogApi->apiServicesAppAuditlogGetauditlogstoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **userName** | **String**|  | [optional] 
 **serviceName** | **String**|  | [optional] 
 **methodName** | **String**|  | [optional] 
 **browserInfo** | **String**|  | [optional] 
 **hasException** | **bool**|  | [optional] 
 **minExecutionDuration** | **int**|  | [optional] 
 **maxExecutionDuration** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAuditlogGetentitychangesGet**
> PagedResultDtoOfEntityChangeListDto apiServicesAppAuditlogGetentitychangesGet(startDate, endDate, userName, entityTypeFullName, sorting, maxResultCount, skipCount)

ApiServicesAppAuditlogGetentitychangesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuditLogApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var userName = userName_example; // String | 
var entityTypeFullName = entityTypeFullName_example; // String | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppAuditlogGetentitychangesGet(startDate, endDate, userName, entityTypeFullName, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling AuditLogApi->apiServicesAppAuditlogGetentitychangesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **userName** | **String**|  | [optional] 
 **entityTypeFullName** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfEntityChangeListDto**](PagedResultDtoOfEntityChangeListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAuditlogGetentitychangestoexcelGet**
> FileDto apiServicesAppAuditlogGetentitychangestoexcelGet(startDate, endDate, userName, entityTypeFullName, sorting, maxResultCount, skipCount)

ApiServicesAppAuditlogGetentitychangestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuditLogApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var userName = userName_example; // String | 
var entityTypeFullName = entityTypeFullName_example; // String | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppAuditlogGetentitychangestoexcelGet(startDate, endDate, userName, entityTypeFullName, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling AuditLogApi->apiServicesAppAuditlogGetentitychangestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **userName** | **String**|  | [optional] 
 **entityTypeFullName** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAuditlogGetentityhistoryobjecttypesGet**
> List<NameValueDto?> apiServicesAppAuditlogGetentityhistoryobjecttypesGet()

ApiServicesAppAuditlogGetentityhistoryobjecttypesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuditLogApi();

try { 
    var result = api_instance.apiServicesAppAuditlogGetentityhistoryobjecttypesGet();
    print(result);
} catch (e) {
    print("Exception when calling AuditLogApi->apiServicesAppAuditlogGetentityhistoryobjecttypesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<NameValueDto>**](NameValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAuditlogGetentitypropertychangesGet**
> List<EntityPropertyChangeDto?> apiServicesAppAuditlogGetentitypropertychangesGet(entityChangeId)

ApiServicesAppAuditlogGetentitypropertychangesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuditLogApi();
var entityChangeId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppAuditlogGetentitypropertychangesGet(entityChangeId);
    print(result);
} catch (e) {
    print("Exception when calling AuditLogApi->apiServicesAppAuditlogGetentitypropertychangesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityChangeId** | **int**|  | [optional] 

### Return type

[**List<EntityPropertyChangeDto>**](EntityPropertyChangeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppAuditlogGetentitytypechangesGet**
> PagedResultDtoOfEntityChangeListDto apiServicesAppAuditlogGetentitytypechangesGet(entityTypeFullName, entityId, sorting, maxResultCount, skipCount)

ApiServicesAppAuditlogGetentitytypechangesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuditLogApi();
var entityTypeFullName = entityTypeFullName_example; // String | 
var entityId = entityId_example; // String | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppAuditlogGetentitytypechangesGet(entityTypeFullName, entityId, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling AuditLogApi->apiServicesAppAuditlogGetentitytypechangesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeFullName** | **String**|  | [optional] 
 **entityId** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfEntityChangeListDto**](PagedResultDtoOfEntityChangeListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

