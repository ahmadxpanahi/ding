# swagger.api.DetailedEmployeeReportsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDetailedemployeereportsGetallGet**](DetailedEmployeeReportsApi.md#apiServicesAppDetailedemployeereportsGetallGet) | **GET** /api/services/app/DetailedEmployeeReports/GetAll | ApiServicesAppDetailedemployeereportsGetallGet


# **apiServicesAppDetailedemployeereportsGetallGet**
> List<GetDetailedEmployeeReportForViewDto?> apiServicesAppDetailedemployeereportsGetallGet(userIdFilter, userNameFilter, workScheduleIdFilter, workScheduleNameFilter, reportDateFrom, reportDateTo)

ApiServicesAppDetailedemployeereportsGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DetailedEmployeeReportsApi();
var userIdFilter = 789; // int | 
var userNameFilter = userNameFilter_example; // String | 
var workScheduleIdFilter = 789; // int | 
var workScheduleNameFilter = workScheduleNameFilter_example; // String | 
var reportDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
var reportDateTo = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppDetailedemployeereportsGetallGet(userIdFilter, userNameFilter, workScheduleIdFilter, workScheduleNameFilter, reportDateFrom, reportDateTo);
    print(result);
} catch (e) {
    print("Exception when calling DetailedEmployeeReportsApi->apiServicesAppDetailedemployeereportsGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdFilter** | **int**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **workScheduleIdFilter** | **int**|  | [optional] 
 **workScheduleNameFilter** | **String**|  | [optional] 
 **reportDateFrom** | **DateTime**|  | [optional] 
 **reportDateTo** | **DateTime**|  | [optional] 

### Return type

[**List<GetDetailedEmployeeReportForViewDto>**](GetDetailedEmployeeReportForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

