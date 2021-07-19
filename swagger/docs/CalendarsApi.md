# swagger.api.CalendarsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppCalendarsCreateoreditPost**](CalendarsApi.md#apiServicesAppCalendarsCreateoreditPost) | **POST** /api/services/app/Calendars/CreateOrEdit | ApiServicesAppCalendarsCreateoreditPost
[**apiServicesAppCalendarsDeleteDelete**](CalendarsApi.md#apiServicesAppCalendarsDeleteDelete) | **DELETE** /api/services/app/Calendars/Delete | ApiServicesAppCalendarsDeleteDelete
[**apiServicesAppCalendarsGetallGet**](CalendarsApi.md#apiServicesAppCalendarsGetallGet) | **GET** /api/services/app/Calendars/GetAll | ApiServicesAppCalendarsGetallGet
[**apiServicesAppCalendarsGetcalendareventbydateGet**](CalendarsApi.md#apiServicesAppCalendarsGetcalendareventbydateGet) | **GET** /api/services/app/Calendars/GetCalendarEventByDate | ApiServicesAppCalendarsGetcalendareventbydateGet
[**apiServicesAppCalendarsGetcalendarforeditGet**](CalendarsApi.md#apiServicesAppCalendarsGetcalendarforeditGet) | **GET** /api/services/app/Calendars/GetCalendarForEdit | ApiServicesAppCalendarsGetcalendarforeditGet
[**apiServicesAppCalendarsGetcalendarforviewGet**](CalendarsApi.md#apiServicesAppCalendarsGetcalendarforviewGet) | **GET** /api/services/app/Calendars/GetCalendarForView | ApiServicesAppCalendarsGetcalendarforviewGet
[**apiServicesAppCalendarsGetcalendarstoexcelGet**](CalendarsApi.md#apiServicesAppCalendarsGetcalendarstoexcelGet) | **GET** /api/services/app/Calendars/GetCalendarsToExcel | ApiServicesAppCalendarsGetcalendarstoexcelGet
[**apiServicesAppCalendarsImportfromtimeirPost**](CalendarsApi.md#apiServicesAppCalendarsImportfromtimeirPost) | **POST** /api/services/app/Calendars/ImportFromTimeIR | ApiServicesAppCalendarsImportfromtimeirPost


# **apiServicesAppCalendarsCreateoreditPost**
> apiServicesAppCalendarsCreateoreditPost(body)

ApiServicesAppCalendarsCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CalendarsApi();
var body = new CreateOrEditCalendarDto(); // CreateOrEditCalendarDto | 

try { 
    api_instance.apiServicesAppCalendarsCreateoreditPost(body);
} catch (e) {
    print("Exception when calling CalendarsApi->apiServicesAppCalendarsCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditCalendarDto**](CreateOrEditCalendarDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCalendarsDeleteDelete**
> apiServicesAppCalendarsDeleteDelete(id)

ApiServicesAppCalendarsDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CalendarsApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppCalendarsDeleteDelete(id);
} catch (e) {
    print("Exception when calling CalendarsApi->apiServicesAppCalendarsDeleteDelete: $e\n");
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

# **apiServicesAppCalendarsGetallGet**
> ListResultDtoOfGetCalendarForViewDto apiServicesAppCalendarsGetallGet(filter, yearFilter, cultureFilter, eventNameFilter, eventTypeFilter, maxResultCount)

ApiServicesAppCalendarsGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CalendarsApi();
var filter = filter_example; // String | 
var yearFilter = 56; // int | 
var cultureFilter = cultureFilter_example; // String | 
var eventNameFilter = eventNameFilter_example; // String | 
var eventTypeFilter = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCalendarsGetallGet(filter, yearFilter, cultureFilter, eventNameFilter, eventTypeFilter, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling CalendarsApi->apiServicesAppCalendarsGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **yearFilter** | **int**|  | [optional] 
 **cultureFilter** | **String**|  | [optional] 
 **eventNameFilter** | **String**|  | [optional] 
 **eventTypeFilter** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**ListResultDtoOfGetCalendarForViewDto**](ListResultDtoOfGetCalendarForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCalendarsGetcalendareventbydateGet**
> ListResultDtoOfGetCalendarForViewDto apiServicesAppCalendarsGetcalendareventbydateGet(input)

ApiServicesAppCalendarsGetcalendareventbydateGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CalendarsApi();
var input = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppCalendarsGetcalendareventbydateGet(input);
    print(result);
} catch (e) {
    print("Exception when calling CalendarsApi->apiServicesAppCalendarsGetcalendareventbydateGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | **DateTime**|  | [optional] 

### Return type

[**ListResultDtoOfGetCalendarForViewDto**](ListResultDtoOfGetCalendarForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCalendarsGetcalendarforeditGet**
> GetCalendarForEditOutput apiServicesAppCalendarsGetcalendarforeditGet(id)

ApiServicesAppCalendarsGetcalendarforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CalendarsApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppCalendarsGetcalendarforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling CalendarsApi->apiServicesAppCalendarsGetcalendarforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetCalendarForEditOutput**](GetCalendarForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCalendarsGetcalendarforviewGet**
> GetCalendarForViewDto apiServicesAppCalendarsGetcalendarforviewGet(id)

ApiServicesAppCalendarsGetcalendarforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CalendarsApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppCalendarsGetcalendarforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling CalendarsApi->apiServicesAppCalendarsGetcalendarforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetCalendarForViewDto**](GetCalendarForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCalendarsGetcalendarstoexcelGet**
> FileDto apiServicesAppCalendarsGetcalendarstoexcelGet(filter, yearFilter, cultureFilter, eventNameFilter, eventTypeFilter)

ApiServicesAppCalendarsGetcalendarstoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CalendarsApi();
var filter = filter_example; // String | 
var yearFilter = 56; // int | 
var cultureFilter = cultureFilter_example; // String | 
var eventNameFilter = eventNameFilter_example; // String | 
var eventTypeFilter = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCalendarsGetcalendarstoexcelGet(filter, yearFilter, cultureFilter, eventNameFilter, eventTypeFilter);
    print(result);
} catch (e) {
    print("Exception when calling CalendarsApi->apiServicesAppCalendarsGetcalendarstoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **yearFilter** | **int**|  | [optional] 
 **cultureFilter** | **String**|  | [optional] 
 **eventNameFilter** | **String**|  | [optional] 
 **eventTypeFilter** | **int**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCalendarsImportfromtimeirPost**
> apiServicesAppCalendarsImportfromtimeirPost()

ApiServicesAppCalendarsImportfromtimeirPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CalendarsApi();

try { 
    api_instance.apiServicesAppCalendarsImportfromtimeirPost();
} catch (e) {
    print("Exception when calling CalendarsApi->apiServicesAppCalendarsImportfromtimeirPost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

