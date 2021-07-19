# swagger.api.EmployeeMissionReportsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppEmployeemissionreportsGetallGet**](EmployeeMissionReportsApi.md#apiServicesAppEmployeemissionreportsGetallGet) | **GET** /api/services/app/EmployeeMissionReports/GetAll | ApiServicesAppEmployeemissionreportsGetallGet
[**apiServicesAppEmployeemissionreportsGetdetailedreportGet**](EmployeeMissionReportsApi.md#apiServicesAppEmployeemissionreportsGetdetailedreportGet) | **GET** /api/services/app/EmployeeMissionReports/GetDetailedReport | ApiServicesAppEmployeemissionreportsGetdetailedreportGet
[**apiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet**](EmployeeMissionReportsApi.md#apiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet) | **GET** /api/services/app/EmployeeMissionReports/GetEmployeeMissionReportsToExcel | ApiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet


# **apiServicesAppEmployeemissionreportsGetallGet**
> PagedResultDtoOfGetEmployeeMissionReportForViewDto apiServicesAppEmployeemissionreportsGetallGet(userIdsFilter, organizationUnitId, userIdFilter, userNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount)

ApiServicesAppEmployeemissionreportsGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EmployeeMissionReportsApi();
var userIdsFilter = []; // List<int> | 
var organizationUnitId = 789; // int | 
var userIdFilter = 789; // int | 
var userNameFilter = userNameFilter_example; // String | 
var reportDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
var reportDateTo = 2013-10-20T19:20:30+01:00; // DateTime | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEmployeemissionreportsGetallGet(userIdsFilter, organizationUnitId, userIdFilter, userNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeMissionReportsApi->apiServicesAppEmployeemissionreportsGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdsFilter** | [**List&lt;int&gt;**](int.md)|  | [optional] 
 **organizationUnitId** | **int**|  | [optional] 
 **userIdFilter** | **int**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **reportDateFrom** | **DateTime**|  | [optional] 
 **reportDateTo** | **DateTime**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetEmployeeMissionReportForViewDto**](PagedResultDtoOfGetEmployeeMissionReportForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEmployeemissionreportsGetdetailedreportGet**
> List<GetDetailedEmployeeMissionReportForViewDto> apiServicesAppEmployeemissionreportsGetdetailedreportGet(userIdsFilter, organizationUnitId, userIdFilter, userNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount)

ApiServicesAppEmployeemissionreportsGetdetailedreportGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EmployeeMissionReportsApi();
var userIdsFilter = []; // List<int> | 
var organizationUnitId = 789; // int | 
var userIdFilter = 789; // int | 
var userNameFilter = userNameFilter_example; // String | 
var reportDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
var reportDateTo = 2013-10-20T19:20:30+01:00; // DateTime | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEmployeemissionreportsGetdetailedreportGet(userIdsFilter, organizationUnitId, userIdFilter, userNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeMissionReportsApi->apiServicesAppEmployeemissionreportsGetdetailedreportGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdsFilter** | [**List&lt;int&gt;**](int.md)|  | [optional] 
 **organizationUnitId** | **int**|  | [optional] 
 **userIdFilter** | **int**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **reportDateFrom** | **DateTime**|  | [optional] 
 **reportDateTo** | **DateTime**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**List<GetDetailedEmployeeMissionReportForViewDto>**](GetDetailedEmployeeMissionReportForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet**
> FileDto apiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet(userIdsFilter, organizationUnitId, userNameFilter, reportDateFrom, reportDateTo)

ApiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EmployeeMissionReportsApi();
var userIdsFilter = []; // List<int> | 
var organizationUnitId = 789; // int | 
var userNameFilter = userNameFilter_example; // String | 
var reportDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
var reportDateTo = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet(userIdsFilter, organizationUnitId, userNameFilter, reportDateFrom, reportDateTo);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeMissionReportsApi->apiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdsFilter** | [**List&lt;int&gt;**](int.md)|  | [optional] 
 **organizationUnitId** | **int**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **reportDateFrom** | **DateTime**|  | [optional] 
 **reportDateTo** | **DateTime**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

