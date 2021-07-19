# swagger.api.VacationTypesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppVacationtypesCreateoreditPost**](VacationTypesApi.md#apiServicesAppVacationtypesCreateoreditPost) | **POST** /api/services/app/VacationTypes/CreateOrEdit | ApiServicesAppVacationtypesCreateoreditPost
[**apiServicesAppVacationtypesDeleteDelete**](VacationTypesApi.md#apiServicesAppVacationtypesDeleteDelete) | **DELETE** /api/services/app/VacationTypes/Delete | ApiServicesAppVacationtypesDeleteDelete
[**apiServicesAppVacationtypesGetallGet**](VacationTypesApi.md#apiServicesAppVacationtypesGetallGet) | **GET** /api/services/app/VacationTypes/GetAll | ApiServicesAppVacationtypesGetallGet
[**apiServicesAppVacationtypesGetalltenantvacationtypesGet**](VacationTypesApi.md#apiServicesAppVacationtypesGetalltenantvacationtypesGet) | **GET** /api/services/app/VacationTypes/GetAllTenantVacationTypes | ApiServicesAppVacationtypesGetalltenantvacationtypesGet
[**apiServicesAppVacationtypesGetvacationtypeforeditGet**](VacationTypesApi.md#apiServicesAppVacationtypesGetvacationtypeforeditGet) | **GET** /api/services/app/VacationTypes/GetVacationTypeForEdit | ApiServicesAppVacationtypesGetvacationtypeforeditGet
[**apiServicesAppVacationtypesGetvacationtypeforviewGet**](VacationTypesApi.md#apiServicesAppVacationtypesGetvacationtypeforviewGet) | **GET** /api/services/app/VacationTypes/GetVacationTypeForView | ApiServicesAppVacationtypesGetvacationtypeforviewGet
[**apiServicesAppVacationtypesGetvacationtypestoexcelGet**](VacationTypesApi.md#apiServicesAppVacationtypesGetvacationtypestoexcelGet) | **GET** /api/services/app/VacationTypes/GetVacationTypesToExcel | ApiServicesAppVacationtypesGetvacationtypestoexcelGet


# **apiServicesAppVacationtypesCreateoreditPost**
?> apiServicesAppVacationtypesCreateoreditPost(body)

ApiServicesAppVacationtypesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VacationTypesApi();
var body = new CreateOrEditVacationTypeDto(); // CreateOrEditVacationTypeDto | 

try { 
    api_instance.apiServicesAppVacationtypesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling VacationTypesApi->apiServicesAppVacationtypesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditVacationTypeDto**](CreateOrEditVacationTypeDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppVacationtypesDeleteDelete**
?> apiServicesAppVacationtypesDeleteDelete(id)

ApiServicesAppVacationtypesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VacationTypesApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppVacationtypesDeleteDelete(id);
} catch (e) {
    print("Exception when calling VacationTypesApi->apiServicesAppVacationtypesDeleteDelete: $e\n");
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

# **apiServicesAppVacationtypesGetallGet**
> PagedResultDtoOfGetVacationTypeForViewDto apiServicesAppVacationtypesGetallGet(filter, titleFilter, maxTotalVacationHoursFilter, minTotalVacationHoursFilter, maxVacationHoursPerMonthFilter, minVacationHoursPerMonthFilter, maxVacationHoursPerDayFilter, minVacationHoursPerDayFilter, hasLimitationVacationPerDayFilter, descriptionFilter, sorting, skipCount, maxResultCount)

ApiServicesAppVacationtypesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VacationTypesApi();
var filter = filter_example; // String | 
var titleFilter = titleFilter_example; // String | 
var maxTotalVacationHoursFilter = 56; // int | 
var minTotalVacationHoursFilter = 56; // int | 
var maxVacationHoursPerMonthFilter = 56; // int | 
var minVacationHoursPerMonthFilter = 56; // int | 
var maxVacationHoursPerDayFilter = 56; // int | 
var minVacationHoursPerDayFilter = 56; // int | 
var hasLimitationVacationPerDayFilter = 56; // int | 
var descriptionFilter = descriptionFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppVacationtypesGetallGet(filter, titleFilter, maxTotalVacationHoursFilter, minTotalVacationHoursFilter, maxVacationHoursPerMonthFilter, minVacationHoursPerMonthFilter, maxVacationHoursPerDayFilter, minVacationHoursPerDayFilter, hasLimitationVacationPerDayFilter, descriptionFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling VacationTypesApi->apiServicesAppVacationtypesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **titleFilter** | **String**|  | [optional] 
 **maxTotalVacationHoursFilter** | **int**|  | [optional] 
 **minTotalVacationHoursFilter** | **int**|  | [optional] 
 **maxVacationHoursPerMonthFilter** | **int**|  | [optional] 
 **minVacationHoursPerMonthFilter** | **int**|  | [optional] 
 **maxVacationHoursPerDayFilter** | **int**|  | [optional] 
 **minVacationHoursPerDayFilter** | **int**|  | [optional] 
 **hasLimitationVacationPerDayFilter** | **int**|  | [optional] 
 **descriptionFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetVacationTypeForViewDto**](PagedResultDtoOfGetVacationTypeForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppVacationtypesGetalltenantvacationtypesGet**
> List<VacationTypeDto?> apiServicesAppVacationtypesGetalltenantvacationtypesGet()

ApiServicesAppVacationtypesGetalltenantvacationtypesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VacationTypesApi();

try { 
    var result = api_instance.apiServicesAppVacationtypesGetalltenantvacationtypesGet();
    print(result);
} catch (e) {
    print("Exception when calling VacationTypesApi->apiServicesAppVacationtypesGetalltenantvacationtypesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<VacationTypeDto>**](VacationTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppVacationtypesGetvacationtypeforeditGet**
> GetVacationTypeForEditOutput apiServicesAppVacationtypesGetvacationtypeforeditGet(id)

ApiServicesAppVacationtypesGetvacationtypeforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VacationTypesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppVacationtypesGetvacationtypeforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling VacationTypesApi->apiServicesAppVacationtypesGetvacationtypeforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetVacationTypeForEditOutput**](GetVacationTypeForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppVacationtypesGetvacationtypeforviewGet**
> GetVacationTypeForViewDto apiServicesAppVacationtypesGetvacationtypeforviewGet(id)

ApiServicesAppVacationtypesGetvacationtypeforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VacationTypesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppVacationtypesGetvacationtypeforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling VacationTypesApi->apiServicesAppVacationtypesGetvacationtypeforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetVacationTypeForViewDto**](GetVacationTypeForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppVacationtypesGetvacationtypestoexcelGet**
> FileDto apiServicesAppVacationtypesGetvacationtypestoexcelGet(filter, titleFilter, maxTotalVacationHoursFilter, minTotalVacationHoursFilter, maxVacationHoursPerMonthFilter, minVacationHoursPerMonthFilter, maxVacationHoursPerDayFilter, minVacationHoursPerDayFilter, hasLimitationVacationPerDayFilter, descriptionFilter)

ApiServicesAppVacationtypesGetvacationtypestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VacationTypesApi();
var filter = filter_example; // String | 
var titleFilter = titleFilter_example; // String | 
var maxTotalVacationHoursFilter = 56; // int | 
var minTotalVacationHoursFilter = 56; // int | 
var maxVacationHoursPerMonthFilter = 56; // int | 
var minVacationHoursPerMonthFilter = 56; // int | 
var maxVacationHoursPerDayFilter = 56; // int | 
var minVacationHoursPerDayFilter = 56; // int | 
var hasLimitationVacationPerDayFilter = 56; // int | 
var descriptionFilter = descriptionFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppVacationtypesGetvacationtypestoexcelGet(filter, titleFilter, maxTotalVacationHoursFilter, minTotalVacationHoursFilter, maxVacationHoursPerMonthFilter, minVacationHoursPerMonthFilter, maxVacationHoursPerDayFilter, minVacationHoursPerDayFilter, hasLimitationVacationPerDayFilter, descriptionFilter);
    print(result);
} catch (e) {
    print("Exception when calling VacationTypesApi->apiServicesAppVacationtypesGetvacationtypestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **titleFilter** | **String**|  | [optional] 
 **maxTotalVacationHoursFilter** | **int**|  | [optional] 
 **minTotalVacationHoursFilter** | **int**|  | [optional] 
 **maxVacationHoursPerMonthFilter** | **int**|  | [optional] 
 **minVacationHoursPerMonthFilter** | **int**|  | [optional] 
 **maxVacationHoursPerDayFilter** | **int**|  | [optional] 
 **minVacationHoursPerDayFilter** | **int**|  | [optional] 
 **hasLimitationVacationPerDayFilter** | **int**|  | [optional] 
 **descriptionFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

