# swagger.api.ReportsTenantsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppReportstenantsGetallGet**](ReportsTenantsApi.md#apiServicesAppReportstenantsGetallGet) | **GET** /api/services/app/ReportsTenants/GetAll | ApiServicesAppReportstenantsGetallGet
[**apiServicesAppReportstenantsGetreportstenantstoexcelGet**](ReportsTenantsApi.md#apiServicesAppReportstenantsGetreportstenantstoexcelGet) | **GET** /api/services/app/ReportsTenants/GetReportsTenantsToExcel | ApiServicesAppReportstenantsGetreportstenantstoexcelGet


# **apiServicesAppReportstenantsGetallGet**
> PagedResultDtoOfGetReportsTenantForViewDto apiServicesAppReportstenantsGetallGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, seniorManagerNameFilter, seniorManagerSurnameFilter, seniorManagerPhoneNumberFilter, adminEmailAddressFilter, addressFilter, tenancyNameFilter, nameFilter, isActiveFilter, countryNameFilter, stateNameFilter, cityNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppReportstenantsGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportsTenantsApi();
var filter = filter_example; // String | 
var subscriptionEndDateStart = 2013-10-20T19:20:30+01:00; // DateTime | 
var subscriptionEndDateEnd = 2013-10-20T19:20:30+01:00; // DateTime | 
var creationDateStart = 2013-10-20T19:20:30+01:00; // DateTime | 
var creationDateEnd = 2013-10-20T19:20:30+01:00; // DateTime | 
var seniorManagerNameFilter = seniorManagerNameFilter_example; // String | 
var seniorManagerSurnameFilter = seniorManagerSurnameFilter_example; // String | 
var seniorManagerPhoneNumberFilter = seniorManagerPhoneNumberFilter_example; // String | 
var adminEmailAddressFilter = adminEmailAddressFilter_example; // String | 
var addressFilter = addressFilter_example; // String | 
var tenancyNameFilter = tenancyNameFilter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var isActiveFilter = 56; // int | 
var countryNameFilter = countryNameFilter_example; // String | 
var stateNameFilter = stateNameFilter_example; // String | 
var cityNameFilter = cityNameFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppReportstenantsGetallGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, seniorManagerNameFilter, seniorManagerSurnameFilter, seniorManagerPhoneNumberFilter, adminEmailAddressFilter, addressFilter, tenancyNameFilter, nameFilter, isActiveFilter, countryNameFilter, stateNameFilter, cityNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling ReportsTenantsApi->apiServicesAppReportstenantsGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **subscriptionEndDateStart** | **DateTime**|  | [optional] 
 **subscriptionEndDateEnd** | **DateTime**|  | [optional] 
 **creationDateStart** | **DateTime**|  | [optional] 
 **creationDateEnd** | **DateTime**|  | [optional] 
 **seniorManagerNameFilter** | **String**|  | [optional] 
 **seniorManagerSurnameFilter** | **String**|  | [optional] 
 **seniorManagerPhoneNumberFilter** | **String**|  | [optional] 
 **adminEmailAddressFilter** | **String**|  | [optional] 
 **addressFilter** | **String**|  | [optional] 
 **tenancyNameFilter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **isActiveFilter** | **int**|  | [optional] 
 **countryNameFilter** | **String**|  | [optional] 
 **stateNameFilter** | **String**|  | [optional] 
 **cityNameFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetReportsTenantForViewDto**](PagedResultDtoOfGetReportsTenantForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppReportstenantsGetreportstenantstoexcelGet**
> FileDto apiServicesAppReportstenantsGetreportstenantstoexcelGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, seniorManagerNameFilter, seniorManagerSurnameFilter, seniorManagerPhoneNumberFilter, adminEmailAddressFilter, addressFilter, tenancyNameFilter, nameFilter, isActiveFilter, countryNameFilter, stateNameFilter, cityNameFilter)

ApiServicesAppReportstenantsGetreportstenantstoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportsTenantsApi();
var filter = filter_example; // String | 
var subscriptionEndDateStart = 2013-10-20T19:20:30+01:00; // DateTime | 
var subscriptionEndDateEnd = 2013-10-20T19:20:30+01:00; // DateTime | 
var creationDateStart = 2013-10-20T19:20:30+01:00; // DateTime | 
var creationDateEnd = 2013-10-20T19:20:30+01:00; // DateTime | 
var seniorManagerNameFilter = seniorManagerNameFilter_example; // String | 
var seniorManagerSurnameFilter = seniorManagerSurnameFilter_example; // String | 
var seniorManagerPhoneNumberFilter = seniorManagerPhoneNumberFilter_example; // String | 
var adminEmailAddressFilter = adminEmailAddressFilter_example; // String | 
var addressFilter = addressFilter_example; // String | 
var tenancyNameFilter = tenancyNameFilter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var isActiveFilter = 56; // int | 
var countryNameFilter = countryNameFilter_example; // String | 
var stateNameFilter = stateNameFilter_example; // String | 
var cityNameFilter = cityNameFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppReportstenantsGetreportstenantstoexcelGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, seniorManagerNameFilter, seniorManagerSurnameFilter, seniorManagerPhoneNumberFilter, adminEmailAddressFilter, addressFilter, tenancyNameFilter, nameFilter, isActiveFilter, countryNameFilter, stateNameFilter, cityNameFilter);
    print(result);
} catch (e) {
    print("Exception when calling ReportsTenantsApi->apiServicesAppReportstenantsGetreportstenantstoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **subscriptionEndDateStart** | **DateTime**|  | [optional] 
 **subscriptionEndDateEnd** | **DateTime**|  | [optional] 
 **creationDateStart** | **DateTime**|  | [optional] 
 **creationDateEnd** | **DateTime**|  | [optional] 
 **seniorManagerNameFilter** | **String**|  | [optional] 
 **seniorManagerSurnameFilter** | **String**|  | [optional] 
 **seniorManagerPhoneNumberFilter** | **String**|  | [optional] 
 **adminEmailAddressFilter** | **String**|  | [optional] 
 **addressFilter** | **String**|  | [optional] 
 **tenancyNameFilter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **isActiveFilter** | **int**|  | [optional] 
 **countryNameFilter** | **String**|  | [optional] 
 **stateNameFilter** | **String**|  | [optional] 
 **cityNameFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

