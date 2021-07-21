# swagger.api.SummaryEmployeeReportsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppSummaryemployeereportsGetallGet**](SummaryEmployeeReportsApi.md#apiServicesAppSummaryemployeereportsGetallGet) | **GET** /api/services/app/SummaryEmployeeReports/GetAll | ApiServicesAppSummaryemployeereportsGetallGet
[**apiServicesAppSummaryemployeereportsGetsummaryemployeereportstoexcelGet**](SummaryEmployeeReportsApi.md#apiServicesAppSummaryemployeereportsGetsummaryemployeereportstoexcelGet) | **GET** /api/services/app/SummaryEmployeeReports/GetSummaryEmployeeReportsToExcel | ApiServicesAppSummaryemployeereportsGetsummaryemployeereportstoexcelGet


# **apiServicesAppSummaryemployeereportsGetallGet**
> PagedResultDtoOfGetSummaryEmployeeReportForViewDto apiServicesAppSummaryemployeereportsGetallGet(userIdsFilter, organizationUnitId, userNameFilter, workScheduleNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount)

ApiServicesAppSummaryemployeereportsGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SummaryEmployeeReportsApi();
var userIdsFilter = []; // List<int> | 
var organizationUnitId = 789; // int | 
var userNameFilter = userNameFilter_example; // String | 
var workScheduleNameFilter = workScheduleNameFilter_example; // String | 
var reportDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
var reportDateTo = 2013-10-20T19:20:30+01:00; // DateTime | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppSummaryemployeereportsGetallGet(userIdsFilter, organizationUnitId, userNameFilter, workScheduleNameFilter, reportDateFrom, reportDateTo, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling SummaryEmployeeReportsApi->apiServicesAppSummaryemployeereportsGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdsFilter** | [**List&lt;int&gt;**](int.md)|  | [optional] 
 **organizationUnitId** | **int**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **workScheduleNameFilter** | **String**|  | [optional] 
 **reportDateFrom** | **DateTime**|  | [optional] 
 **reportDateTo** | **DateTime**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetSummaryEmployeeReportForViewDto**](PagedResultDtoOfGetSummaryEmployeeReportForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppSummaryemployeereportsGetsummaryemployeereportstoexcelGet**
> FileDto apiServicesAppSummaryemployeereportsGetsummaryemployeereportstoexcelGet(userIdsFilter, organizationUnitId, userNameFilter, workScheduleNameFilter, reportDateFrom, reportDateTo)

ApiServicesAppSummaryemployeereportsGetsummaryemployeereportstoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SummaryEmployeeReportsApi();
var userIdsFilter = []; // List<int> | 
var organizationUnitId = 789; // int | 
var userNameFilter = userNameFilter_example; // String | 
var workScheduleNameFilter = workScheduleNameFilter_example; // String | 
var reportDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
var reportDateTo = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppSummaryemployeereportsGetsummaryemployeereportstoexcelGet(userIdsFilter, organizationUnitId, userNameFilter, workScheduleNameFilter, reportDateFrom, reportDateTo);
    print(result);
} catch (e) {
    print("Exception when calling SummaryEmployeeReportsApi->apiServicesAppSummaryemployeereportsGetsummaryemployeereportstoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdsFilter** | [**List&lt;int&gt;**](int.md)|  | [optional] 
 **organizationUnitId** | **int**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **workScheduleNameFilter** | **String**|  | [optional] 
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

