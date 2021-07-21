# swagger.api.UserWorkSchedulesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppUserworkschedulesCreateoreditPost**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesCreateoreditPost) | **POST** /api/services/app/UserWorkSchedules/CreateOrEdit | ApiServicesAppUserworkschedulesCreateoreditPost
[**apiServicesAppUserworkschedulesDeleteDelete**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesDeleteDelete) | **DELETE** /api/services/app/UserWorkSchedules/Delete | ApiServicesAppUserworkschedulesDeleteDelete
[**apiServicesAppUserworkschedulesGetallGet**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesGetallGet) | **GET** /api/services/app/UserWorkSchedules/GetAll | ApiServicesAppUserworkschedulesGetallGet
[**apiServicesAppUserworkschedulesGetalluserforlookuptableGet**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesGetalluserforlookuptableGet) | **GET** /api/services/app/UserWorkSchedules/GetAllUserForLookupTable | ApiServicesAppUserworkschedulesGetalluserforlookuptableGet
[**apiServicesAppUserworkschedulesGetallworkscheduleforlookuptableGet**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesGetallworkscheduleforlookuptableGet) | **GET** /api/services/app/UserWorkSchedules/GetAllWorkScheduleForLookupTable | ApiServicesAppUserworkschedulesGetallworkscheduleforlookuptableGet
[**apiServicesAppUserworkschedulesGetuserworkhourbydateGet**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesGetuserworkhourbydateGet) | **GET** /api/services/app/UserWorkSchedules/GetUserWorkHourByDate | ApiServicesAppUserworkschedulesGetuserworkhourbydateGet
[**apiServicesAppUserworkschedulesGetuserworkscheduleforeditGet**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesGetuserworkscheduleforeditGet) | **GET** /api/services/app/UserWorkSchedules/GetUserWorkScheduleForEdit | ApiServicesAppUserworkschedulesGetuserworkscheduleforeditGet
[**apiServicesAppUserworkschedulesGetuserworkscheduleforviewGet**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesGetuserworkscheduleforviewGet) | **GET** /api/services/app/UserWorkSchedules/GetUserWorkScheduleForView | ApiServicesAppUserworkschedulesGetuserworkscheduleforviewGet
[**apiServicesAppUserworkschedulesGetuserworkschedulestoexcelGet**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesGetuserworkschedulestoexcelGet) | **GET** /api/services/app/UserWorkSchedules/GetUserWorkSchedulesToExcel | ApiServicesAppUserworkschedulesGetuserworkschedulestoexcelGet
[**apiServicesAppUserworkschedulesIsinworkschedulePost**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesIsinworkschedulePost) | **POST** /api/services/app/UserWorkSchedules/IsInWorkSchedule | ApiServicesAppUserworkschedulesIsinworkschedulePost
[**apiServicesAppUserworkschedulesSaveuserworkschedulePost**](UserWorkSchedulesApi.md#apiServicesAppUserworkschedulesSaveuserworkschedulePost) | **POST** /api/services/app/UserWorkSchedules/SaveUserWorkSchedule | ApiServicesAppUserworkschedulesSaveuserworkschedulePost


# **apiServicesAppUserworkschedulesCreateoreditPost**
?> apiServicesAppUserworkschedulesCreateoreditPost(body)

ApiServicesAppUserworkschedulesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var body = new CreateOrEditUserWorkScheduleDto(); // CreateOrEditUserWorkScheduleDto | 

try { 
    api_instance.apiServicesAppUserworkschedulesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditUserWorkScheduleDto**](CreateOrEditUserWorkScheduleDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserworkschedulesDeleteDelete**
?> apiServicesAppUserworkschedulesDeleteDelete(id)

ApiServicesAppUserworkschedulesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppUserworkschedulesDeleteDelete(id);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesDeleteDelete: $e\n");
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

# **apiServicesAppUserworkschedulesGetallGet**
> PagedResultDtoOfGetUserWorkScheduleForViewDto apiServicesAppUserworkschedulesGetallGet(filter, userNameFilter, workScheduleNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppUserworkschedulesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var filter = filter_example; // String | 
var userNameFilter = userNameFilter_example; // String | 
var workScheduleNameFilter = workScheduleNameFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppUserworkschedulesGetallGet(filter, userNameFilter, workScheduleNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **workScheduleNameFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetUserWorkScheduleForViewDto**](PagedResultDtoOfGetUserWorkScheduleForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserworkschedulesGetalluserforlookuptableGet**
> PagedResultDtoOfUserWorkScheduleUserLookupTableDto apiServicesAppUserworkschedulesGetalluserforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppUserworkschedulesGetalluserforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppUserworkschedulesGetalluserforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesGetalluserforlookuptableGet: $e\n");
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

[**PagedResultDtoOfUserWorkScheduleUserLookupTableDto**](PagedResultDtoOfUserWorkScheduleUserLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserworkschedulesGetallworkscheduleforlookuptableGet**
> PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto apiServicesAppUserworkschedulesGetallworkscheduleforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppUserworkschedulesGetallworkscheduleforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppUserworkschedulesGetallworkscheduleforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesGetallworkscheduleforlookuptableGet: $e\n");
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

[**PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto**](PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserworkschedulesGetuserworkhourbydateGet**
> WorkHourDto apiServicesAppUserworkschedulesGetuserworkhourbydateGet(userId, requestDay)

ApiServicesAppUserworkschedulesGetuserworkhourbydateGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var userId = 789; // int | 
var requestDay = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppUserworkschedulesGetuserworkhourbydateGet(userId, requestDay);
    print(result);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesGetuserworkhourbydateGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 
 **requestDay** | **DateTime**|  | [optional] 

### Return type

[**WorkHourDto**](WorkHourDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserworkschedulesGetuserworkscheduleforeditGet**
> GetUserWorkScheduleForEditOutput apiServicesAppUserworkschedulesGetuserworkscheduleforeditGet(id)

ApiServicesAppUserworkschedulesGetuserworkscheduleforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserworkschedulesGetuserworkscheduleforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesGetuserworkscheduleforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetUserWorkScheduleForEditOutput**](GetUserWorkScheduleForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserworkschedulesGetuserworkscheduleforviewGet**
> GetUserWorkScheduleForViewDto apiServicesAppUserworkschedulesGetuserworkscheduleforviewGet(id)

ApiServicesAppUserworkschedulesGetuserworkscheduleforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserworkschedulesGetuserworkscheduleforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesGetuserworkscheduleforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetUserWorkScheduleForViewDto**](GetUserWorkScheduleForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserworkschedulesGetuserworkschedulestoexcelGet**
> FileDto apiServicesAppUserworkschedulesGetuserworkschedulestoexcelGet(filter, userNameFilter, workScheduleNameFilter)

ApiServicesAppUserworkschedulesGetuserworkschedulestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var filter = filter_example; // String | 
var userNameFilter = userNameFilter_example; // String | 
var workScheduleNameFilter = workScheduleNameFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppUserworkschedulesGetuserworkschedulestoexcelGet(filter, userNameFilter, workScheduleNameFilter);
    print(result);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesGetuserworkschedulestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **workScheduleNameFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserworkschedulesIsinworkschedulePost**
> bool apiServicesAppUserworkschedulesIsinworkschedulePost(userId, workScheduleId)

ApiServicesAppUserworkschedulesIsinworkschedulePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var userId = 789; // int | 
var workScheduleId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserworkschedulesIsinworkschedulePost(userId, workScheduleId);
    print(result);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesIsinworkschedulePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 
 **workScheduleId** | **int**|  | [optional] 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserworkschedulesSaveuserworkschedulePost**
?> apiServicesAppUserworkschedulesSaveuserworkschedulePost(userId, body)

ApiServicesAppUserworkschedulesSaveuserworkschedulePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserWorkSchedulesApi();
var userId = 789; // int | 
var body = [new List&lt;String&gt;()]; // List<String> | 

try { 
    api_instance.apiServicesAppUserworkschedulesSaveuserworkschedulePost(userId, body);
} catch (e) {
    print("Exception when calling UserWorkSchedulesApi->apiServicesAppUserworkschedulesSaveuserworkschedulePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 
 **body** | **List&lt;String&gt;**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

