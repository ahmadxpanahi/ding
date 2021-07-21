# swagger.api.EmployeeLeaveReportsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppEmployeeleavereportsGetallGet**](EmployeeLeaveReportsApi.md#apiServicesAppEmployeeleavereportsGetallGet) | **GET** /api/services/app/EmployeeLeaveReports/GetAll | ApiServicesAppEmployeeleavereportsGetallGet
[**apiServicesAppEmployeeleavereportsGetdetailedreportGet**](EmployeeLeaveReportsApi.md#apiServicesAppEmployeeleavereportsGetdetailedreportGet) | **GET** /api/services/app/EmployeeLeaveReports/GetDetailedReport | ApiServicesAppEmployeeleavereportsGetdetailedreportGet
[**apiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet**](EmployeeLeaveReportsApi.md#apiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet) | **GET** /api/services/app/EmployeeLeaveReports/GetEmployeeLeaveReportsToExcel | ApiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet


# **apiServicesAppEmployeeleavereportsGetallGet**
> PagedResultDtoOfGetEmployeeLeaveReportForViewDto apiServicesAppEmployeeleavereportsGetallGet(userIdsFilter, organizationUnitId, userIdFilter, userNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount)

ApiServicesAppEmployeeleavereportsGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EmployeeLeaveReportsApi();
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
    var result = api_instance.apiServicesAppEmployeeleavereportsGetallGet(userIdsFilter, organizationUnitId, userIdFilter, userNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeLeaveReportsApi->apiServicesAppEmployeeleavereportsGetallGet: $e\n");
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

[**PagedResultDtoOfGetEmployeeLeaveReportForViewDto**](PagedResultDtoOfGetEmployeeLeaveReportForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEmployeeleavereportsGetdetailedreportGet**
> List<GetDetailedEmployeeLeaveReportForViewDto?> apiServicesAppEmployeeleavereportsGetdetailedreportGet(userIdsFilter, organizationUnitId, userIdFilter, userNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount)

ApiServicesAppEmployeeleavereportsGetdetailedreportGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EmployeeLeaveReportsApi();
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
    var result = api_instance.apiServicesAppEmployeeleavereportsGetdetailedreportGet(userIdsFilter, organizationUnitId, userIdFilter, userNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeLeaveReportsApi->apiServicesAppEmployeeleavereportsGetdetailedreportGet: $e\n");
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

[**List<GetDetailedEmployeeLeaveReportForViewDto>**](GetDetailedEmployeeLeaveReportForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet**
> FileDto apiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet(userIdsFilter, organizationUnitId, userNameFilter, reportDateFrom, reportDateTo)

ApiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EmployeeLeaveReportsApi();
var userIdsFilter = []; // List<int> | 
var organizationUnitId = 789; // int | 
var userNameFilter = userNameFilter_example; // String | 
var reportDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
var reportDateTo = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet(userIdsFilter, organizationUnitId, userNameFilter, reportDateFrom, reportDateTo);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeLeaveReportsApi->apiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet: $e\n");
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

