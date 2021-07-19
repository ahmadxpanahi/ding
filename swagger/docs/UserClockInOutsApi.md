# swagger.api.UserClockInOutsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost) | **POST** /api/services/app/UserClockInOuts/ClockInOutByRequestApproval | ApiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost
[**apiServicesAppUserclockinoutsCreateoreditPost**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsCreateoreditPost) | **POST** /api/services/app/UserClockInOuts/CreateOrEdit | ApiServicesAppUserclockinoutsCreateoreditPost
[**apiServicesAppUserclockinoutsDeleteDelete**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsDeleteDelete) | **DELETE** /api/services/app/UserClockInOuts/Delete | ApiServicesAppUserclockinoutsDeleteDelete
[**apiServicesAppUserclockinoutsGetallGet**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsGetallGet) | **GET** /api/services/app/UserClockInOuts/GetAll | ApiServicesAppUserclockinoutsGetallGet
[**apiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet) | **GET** /api/services/app/UserClockInOuts/GetAllOrganizationUnitForTableDropdown | ApiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet
[**apiServicesAppUserclockinoutsGetalluserfortabledropdownGet**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsGetalluserfortabledropdownGet) | **GET** /api/services/app/UserClockInOuts/GetAllUserForTableDropdown | ApiServicesAppUserclockinoutsGetalluserfortabledropdownGet
[**apiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet) | **GET** /api/services/app/UserClockInOuts/GetAllWorkHourForTableDropdown | ApiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet
[**apiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet) | **GET** /api/services/app/UserClockInOuts/GetAllWorkScheduleForTableDropdown | ApiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet
[**apiServicesAppUserclockinoutsGetuserclockinoutforeditGet**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsGetuserclockinoutforeditGet) | **GET** /api/services/app/UserClockInOuts/GetUserClockInOutForEdit | ApiServicesAppUserclockinoutsGetuserclockinoutforeditGet
[**apiServicesAppUserclockinoutsGetuserclockinoutforviewGet**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsGetuserclockinoutforviewGet) | **GET** /api/services/app/UserClockInOuts/GetUserClockInOutForView | ApiServicesAppUserclockinoutsGetuserclockinoutforviewGet
[**apiServicesAppUserclockinoutsGetuserclocksstatusGet**](UserClockInOutsApi.md#apiServicesAppUserclockinoutsGetuserclocksstatusGet) | **GET** /api/services/app/UserClockInOuts/GetUserClocksStatus | ApiServicesAppUserclockinoutsGetuserclocksstatusGet


# **apiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost**
> apiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost(body)

ApiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();
var body = new CreateOrEditUserClockInOutDto(); // CreateOrEditUserClockInOutDto | 

try { 
    api_instance.apiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost(body);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditUserClockInOutDto**](CreateOrEditUserClockInOutDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserclockinoutsCreateoreditPost**
> apiServicesAppUserclockinoutsCreateoreditPost(body)

ApiServicesAppUserclockinoutsCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();
var body = new CreateOrEditUserClockInOutDto(); // CreateOrEditUserClockInOutDto | 

try { 
    api_instance.apiServicesAppUserclockinoutsCreateoreditPost(body);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditUserClockInOutDto**](CreateOrEditUserClockInOutDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserclockinoutsDeleteDelete**
> apiServicesAppUserclockinoutsDeleteDelete(id)

ApiServicesAppUserclockinoutsDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppUserclockinoutsDeleteDelete(id);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsDeleteDelete: $e\n");
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

# **apiServicesAppUserclockinoutsGetallGet**
> PagedResultDtoOfGetUserClockInOutForViewDto apiServicesAppUserclockinoutsGetallGet(filter, maxClockFilter, minClockFilter, clockInOutTypeFilter, abnormalityTypeFilter, maxWeekNumberFilter, minWeekNumberFilter, userNameFilter, workScheduleNameFilter, workHourDayNameFilter, organizationUnitDisplayNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppUserclockinoutsGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();
var filter = filter_example; // String | 
var maxClockFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var minClockFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var clockInOutTypeFilter = 56; // int | 
var abnormalityTypeFilter = 56; // int | 
var maxWeekNumberFilter = 56; // int | 
var minWeekNumberFilter = 56; // int | 
var userNameFilter = userNameFilter_example; // String | 
var workScheduleNameFilter = workScheduleNameFilter_example; // String | 
var workHourDayNameFilter = workHourDayNameFilter_example; // String | 
var organizationUnitDisplayNameFilter = organizationUnitDisplayNameFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppUserclockinoutsGetallGet(filter, maxClockFilter, minClockFilter, clockInOutTypeFilter, abnormalityTypeFilter, maxWeekNumberFilter, minWeekNumberFilter, userNameFilter, workScheduleNameFilter, workHourDayNameFilter, organizationUnitDisplayNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **maxClockFilter** | **DateTime**|  | [optional] 
 **minClockFilter** | **DateTime**|  | [optional] 
 **clockInOutTypeFilter** | **int**|  | [optional] 
 **abnormalityTypeFilter** | **int**|  | [optional] 
 **maxWeekNumberFilter** | **int**|  | [optional] 
 **minWeekNumberFilter** | **int**|  | [optional] 
 **userNameFilter** | **String**|  | [optional] 
 **workScheduleNameFilter** | **String**|  | [optional] 
 **workHourDayNameFilter** | **String**|  | [optional] 
 **organizationUnitDisplayNameFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetUserClockInOutForViewDto**](PagedResultDtoOfGetUserClockInOutForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet**
> List<UserClockInOutOrganizationUnitLookupTableDto> apiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet()

ApiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();

try { 
    var result = api_instance.apiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet();
    print(result);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserClockInOutOrganizationUnitLookupTableDto>**](UserClockInOutOrganizationUnitLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserclockinoutsGetalluserfortabledropdownGet**
> List<UserClockInOutUserLookupTableDto> apiServicesAppUserclockinoutsGetalluserfortabledropdownGet()

ApiServicesAppUserclockinoutsGetalluserfortabledropdownGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();

try { 
    var result = api_instance.apiServicesAppUserclockinoutsGetalluserfortabledropdownGet();
    print(result);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsGetalluserfortabledropdownGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserClockInOutUserLookupTableDto>**](UserClockInOutUserLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet**
> List<UserClockInOutWorkHourLookupTableDto> apiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet()

ApiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();

try { 
    var result = api_instance.apiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet();
    print(result);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserClockInOutWorkHourLookupTableDto>**](UserClockInOutWorkHourLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet**
> List<UserClockInOutWorkScheduleLookupTableDto> apiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet()

ApiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();

try { 
    var result = api_instance.apiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet();
    print(result);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserClockInOutWorkScheduleLookupTableDto>**](UserClockInOutWorkScheduleLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserclockinoutsGetuserclockinoutforeditGet**
> GetUserClockInOutForEditOutput apiServicesAppUserclockinoutsGetuserclockinoutforeditGet(id)

ApiServicesAppUserclockinoutsGetuserclockinoutforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserclockinoutsGetuserclockinoutforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsGetuserclockinoutforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetUserClockInOutForEditOutput**](GetUserClockInOutForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserclockinoutsGetuserclockinoutforviewGet**
> GetUserClockInOutForViewDto apiServicesAppUserclockinoutsGetuserclockinoutforviewGet(id)

ApiServicesAppUserclockinoutsGetuserclockinoutforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserclockinoutsGetuserclockinoutforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsGetuserclockinoutforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetUserClockInOutForViewDto**](GetUserClockInOutForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserclockinoutsGetuserclocksstatusGet**
> PagedResultDtoOfGetUserClockInOutForViewDto apiServicesAppUserclockinoutsGetuserclocksstatusGet(maxClockFilter, minClockFilter, sorting, skipCount, maxResultCount)

ApiServicesAppUserclockinoutsGetuserclocksstatusGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserClockInOutsApi();
var maxClockFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var minClockFilter = 2013-10-20T19:20:30+01:00; // DateTime | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppUserclockinoutsGetuserclocksstatusGet(maxClockFilter, minClockFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling UserClockInOutsApi->apiServicesAppUserclockinoutsGetuserclocksstatusGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxClockFilter** | **DateTime**|  | [optional] 
 **minClockFilter** | **DateTime**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetUserClockInOutForViewDto**](PagedResultDtoOfGetUserClockInOutForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

