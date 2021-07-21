# swagger.api.WorkSchedulesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppWorkschedulesCalculatetotalworkhoutsPost**](WorkSchedulesApi.md#apiServicesAppWorkschedulesCalculatetotalworkhoutsPost) | **POST** /api/services/app/WorkSchedules/CalculateTotalWorkHouts | ApiServicesAppWorkschedulesCalculatetotalworkhoutsPost
[**apiServicesAppWorkschedulesCreateoreditPost**](WorkSchedulesApi.md#apiServicesAppWorkschedulesCreateoreditPost) | **POST** /api/services/app/WorkSchedules/CreateOrEdit | ApiServicesAppWorkschedulesCreateoreditPost
[**apiServicesAppWorkschedulesDeleteDelete**](WorkSchedulesApi.md#apiServicesAppWorkschedulesDeleteDelete) | **DELETE** /api/services/app/WorkSchedules/Delete | ApiServicesAppWorkschedulesDeleteDelete
[**apiServicesAppWorkschedulesGetallGet**](WorkSchedulesApi.md#apiServicesAppWorkschedulesGetallGet) | **GET** /api/services/app/WorkSchedules/GetAll | ApiServicesAppWorkschedulesGetallGet
[**apiServicesAppWorkschedulesGetalltenantworkschedulesGet**](WorkSchedulesApi.md#apiServicesAppWorkschedulesGetalltenantworkschedulesGet) | **GET** /api/services/app/WorkSchedules/GetAllTenantWorkSchedules | ApiServicesAppWorkschedulesGetalltenantworkschedulesGet
[**apiServicesAppWorkschedulesGetcurrentuserworkhoursGet**](WorkSchedulesApi.md#apiServicesAppWorkschedulesGetcurrentuserworkhoursGet) | **GET** /api/services/app/WorkSchedules/GetCurrentUserWorkHours | ApiServicesAppWorkschedulesGetcurrentuserworkhoursGet
[**apiServicesAppWorkschedulesGetworkhoursGet**](WorkSchedulesApi.md#apiServicesAppWorkschedulesGetworkhoursGet) | **GET** /api/services/app/WorkSchedules/GetWorkHours | ApiServicesAppWorkschedulesGetworkhoursGet
[**apiServicesAppWorkschedulesGetworkscheduleforeditGet**](WorkSchedulesApi.md#apiServicesAppWorkschedulesGetworkscheduleforeditGet) | **GET** /api/services/app/WorkSchedules/GetWorkScheduleForEdit | ApiServicesAppWorkschedulesGetworkscheduleforeditGet


# **apiServicesAppWorkschedulesCalculatetotalworkhoutsPost**
> double apiServicesAppWorkschedulesCalculatetotalworkhoutsPost(body)

ApiServicesAppWorkschedulesCalculatetotalworkhoutsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WorkSchedulesApi();
var body = new WorkModelType(); // WorkModelType | 

try { 
    var result = api_instance.apiServicesAppWorkschedulesCalculatetotalworkhoutsPost(body);
    print(result);
} catch (e) {
    print("Exception when calling WorkSchedulesApi->apiServicesAppWorkschedulesCalculatetotalworkhoutsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WorkModelType**](WorkModelType.md)|  | [optional] 

### Return type

**double**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWorkschedulesCreateoreditPost**
> int apiServicesAppWorkschedulesCreateoreditPost(body)

ApiServicesAppWorkschedulesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WorkSchedulesApi();
var body = new CreateOrEditWorkScheduleDto(); // CreateOrEditWorkScheduleDto | 

try { 
    var result = api_instance.apiServicesAppWorkschedulesCreateoreditPost(body);
    print(result);
} catch (e) {
    print("Exception when calling WorkSchedulesApi->apiServicesAppWorkschedulesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditWorkScheduleDto**](CreateOrEditWorkScheduleDto.md)|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWorkschedulesDeleteDelete**
?> apiServicesAppWorkschedulesDeleteDelete(id)

ApiServicesAppWorkschedulesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WorkSchedulesApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppWorkschedulesDeleteDelete(id);
} catch (e) {
    print("Exception when calling WorkSchedulesApi->apiServicesAppWorkschedulesDeleteDelete: $e\n");
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

# **apiServicesAppWorkschedulesGetallGet**
> PagedResultDtoOfWorkScheduleDto apiServicesAppWorkschedulesGetallGet(filter, nameFilter, workModelTypeFilter, sorting, skipCount, maxResultCount)

ApiServicesAppWorkschedulesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WorkSchedulesApi();
var filter = filter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var workModelTypeFilter = 56; // int | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppWorkschedulesGetallGet(filter, nameFilter, workModelTypeFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling WorkSchedulesApi->apiServicesAppWorkschedulesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **workModelTypeFilter** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfWorkScheduleDto**](PagedResultDtoOfWorkScheduleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWorkschedulesGetalltenantworkschedulesGet**
> List<WorkScheduleDto?> apiServicesAppWorkschedulesGetalltenantworkschedulesGet()

ApiServicesAppWorkschedulesGetalltenantworkschedulesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WorkSchedulesApi();

try { 
    var result = api_instance.apiServicesAppWorkschedulesGetalltenantworkschedulesGet();
    print(result);
} catch (e) {
    print("Exception when calling WorkSchedulesApi->apiServicesAppWorkschedulesGetalltenantworkschedulesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<WorkScheduleDto>**](WorkScheduleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWorkschedulesGetcurrentuserworkhoursGet**
> GetUserWorkScheduleForViewDto apiServicesAppWorkschedulesGetcurrentuserworkhoursGet()

ApiServicesAppWorkschedulesGetcurrentuserworkhoursGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WorkSchedulesApi();

try { 
    var result = api_instance.apiServicesAppWorkschedulesGetcurrentuserworkhoursGet();
    print(result);
} catch (e) {
    print("Exception when calling WorkSchedulesApi->apiServicesAppWorkschedulesGetcurrentuserworkhoursGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUserWorkScheduleForViewDto**](GetUserWorkScheduleForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWorkschedulesGetworkhoursGet**
> List<WorkHourDto?> apiServicesAppWorkschedulesGetworkhoursGet(workScheduleId)

ApiServicesAppWorkschedulesGetworkhoursGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WorkSchedulesApi();
var workScheduleId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppWorkschedulesGetworkhoursGet(workScheduleId);
    print(result);
} catch (e) {
    print("Exception when calling WorkSchedulesApi->apiServicesAppWorkschedulesGetworkhoursGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workScheduleId** | **int**|  | [optional] 

### Return type

[**List<WorkHourDto>**](WorkHourDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWorkschedulesGetworkscheduleforeditGet**
> GetWorkScheduleForEditOutput apiServicesAppWorkschedulesGetworkscheduleforeditGet(id)

ApiServicesAppWorkschedulesGetworkscheduleforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WorkSchedulesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppWorkschedulesGetworkscheduleforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling WorkSchedulesApi->apiServicesAppWorkschedulesGetworkscheduleforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetWorkScheduleForEditOutput**](GetWorkScheduleForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

