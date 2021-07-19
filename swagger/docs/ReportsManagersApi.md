# swagger.api.ReportsManagersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppReportsmanagersGetallGet**](ReportsManagersApi.md#apiServicesAppReportsmanagersGetallGet) | **GET** /api/services/app/ReportsManagers/GetAll | ApiServicesAppReportsmanagersGetallGet
[**apiServicesAppReportsmanagersGetreportsmanagerstoexcelGet**](ReportsManagersApi.md#apiServicesAppReportsmanagersGetreportsmanagerstoexcelGet) | **GET** /api/services/app/ReportsManagers/GetReportsManagersToExcel | ApiServicesAppReportsmanagersGetreportsmanagerstoexcelGet


# **apiServicesAppReportsmanagersGetallGet**
> PagedResultDtoOfGetReportsManagerForViewDto apiServicesAppReportsmanagersGetallGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, seniorManagerNameFilter, seniorManagerSurnameFilter, seniorManagerPhoneNumberFilter, adminEmailAddressFilter, addressFilter, tenancyNameFilter, nameFilter, isActiveFilter, countryNameFilter, stateNameFilter, cityNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppReportsmanagersGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportsManagersApi();
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
    var result = api_instance.apiServicesAppReportsmanagersGetallGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, seniorManagerNameFilter, seniorManagerSurnameFilter, seniorManagerPhoneNumberFilter, adminEmailAddressFilter, addressFilter, tenancyNameFilter, nameFilter, isActiveFilter, countryNameFilter, stateNameFilter, cityNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling ReportsManagersApi->apiServicesAppReportsmanagersGetallGet: $e\n");
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

[**PagedResultDtoOfGetReportsManagerForViewDto**](PagedResultDtoOfGetReportsManagerForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppReportsmanagersGetreportsmanagerstoexcelGet**
> FileDto apiServicesAppReportsmanagersGetreportsmanagerstoexcelGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, seniorManagerNameFilter, seniorManagerSurnameFilter, seniorManagerPhoneNumberFilter, adminEmailAddressFilter, addressFilter, tenancyNameFilter, nameFilter, isActiveFilter, countryNameFilter, stateNameFilter, cityNameFilter)

ApiServicesAppReportsmanagersGetreportsmanagerstoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ReportsManagersApi();
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
    var result = api_instance.apiServicesAppReportsmanagersGetreportsmanagerstoexcelGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, seniorManagerNameFilter, seniorManagerSurnameFilter, seniorManagerPhoneNumberFilter, adminEmailAddressFilter, addressFilter, tenancyNameFilter, nameFilter, isActiveFilter, countryNameFilter, stateNameFilter, cityNameFilter);
    print(result);
} catch (e) {
    print("Exception when calling ReportsManagersApi->apiServicesAppReportsmanagersGetreportsmanagerstoexcelGet: $e\n");
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

