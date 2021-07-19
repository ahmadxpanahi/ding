# swagger.api.CountriesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppCountriesCreateoreditPost**](CountriesApi.md#apiServicesAppCountriesCreateoreditPost) | **POST** /api/services/app/Countries/CreateOrEdit | ApiServicesAppCountriesCreateoreditPost
[**apiServicesAppCountriesDeleteDelete**](CountriesApi.md#apiServicesAppCountriesDeleteDelete) | **DELETE** /api/services/app/Countries/Delete | ApiServicesAppCountriesDeleteDelete
[**apiServicesAppCountriesGetallGet**](CountriesApi.md#apiServicesAppCountriesGetallGet) | **GET** /api/services/app/Countries/GetAll | ApiServicesAppCountriesGetallGet
[**apiServicesAppCountriesGetcountriestoexcelGet**](CountriesApi.md#apiServicesAppCountriesGetcountriestoexcelGet) | **GET** /api/services/app/Countries/GetCountriesToExcel | ApiServicesAppCountriesGetcountriestoexcelGet
[**apiServicesAppCountriesGetcountryforeditGet**](CountriesApi.md#apiServicesAppCountriesGetcountryforeditGet) | **GET** /api/services/app/Countries/GetCountryForEdit | ApiServicesAppCountriesGetcountryforeditGet
[**apiServicesAppCountriesGetcountryforviewGet**](CountriesApi.md#apiServicesAppCountriesGetcountryforviewGet) | **GET** /api/services/app/Countries/GetCountryForView | ApiServicesAppCountriesGetcountryforviewGet
[**apiServicesAppCountriesWholePost**](CountriesApi.md#apiServicesAppCountriesWholePost) | **POST** /api/services/app/Countries/Whole | ApiServicesAppCountriesWholePost


# **apiServicesAppCountriesCreateoreditPost**
?> apiServicesAppCountriesCreateoreditPost(body)

ApiServicesAppCountriesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CountriesApi();
var body = new CreateOrEditCountryDto(); // CreateOrEditCountryDto | 

try { 
    api_instance.apiServicesAppCountriesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling CountriesApi->apiServicesAppCountriesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditCountryDto**](CreateOrEditCountryDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCountriesDeleteDelete**
?> apiServicesAppCountriesDeleteDelete(id)

ApiServicesAppCountriesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CountriesApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppCountriesDeleteDelete(id);
} catch (e) {
    print("Exception when calling CountriesApi->apiServicesAppCountriesDeleteDelete: $e\n");
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

# **apiServicesAppCountriesGetallGet**
> PagedResultDtoOfGetCountryForViewDto apiServicesAppCountriesGetallGet(filter, nameFilter, iSO3Filter, iSO2Filter, phoneCodeFilter, capitalFilter, currencyFilter, nativeNameFilter, regionFilter, subregionFilter, sorting, skipCount, maxResultCount)

ApiServicesAppCountriesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CountriesApi();
var filter = filter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var iSO3Filter = iSO3Filter_example; // String | 
var iSO2Filter = iSO2Filter_example; // String | 
var phoneCodeFilter = phoneCodeFilter_example; // String | 
var capitalFilter = capitalFilter_example; // String | 
var currencyFilter = currencyFilter_example; // String | 
var nativeNameFilter = nativeNameFilter_example; // String | 
var regionFilter = regionFilter_example; // String | 
var subregionFilter = subregionFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCountriesGetallGet(filter, nameFilter, iSO3Filter, iSO2Filter, phoneCodeFilter, capitalFilter, currencyFilter, nativeNameFilter, regionFilter, subregionFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling CountriesApi->apiServicesAppCountriesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **iSO3Filter** | **String**|  | [optional] 
 **iSO2Filter** | **String**|  | [optional] 
 **phoneCodeFilter** | **String**|  | [optional] 
 **capitalFilter** | **String**|  | [optional] 
 **currencyFilter** | **String**|  | [optional] 
 **nativeNameFilter** | **String**|  | [optional] 
 **regionFilter** | **String**|  | [optional] 
 **subregionFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetCountryForViewDto**](PagedResultDtoOfGetCountryForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCountriesGetcountriestoexcelGet**
> FileDto apiServicesAppCountriesGetcountriestoexcelGet(filter, nameFilter, iSO3Filter, iSO2Filter, phoneCodeFilter, capitalFilter, currencyFilter, nativeNameFilter, regionFilter, subregionFilter)

ApiServicesAppCountriesGetcountriestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CountriesApi();
var filter = filter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var iSO3Filter = iSO3Filter_example; // String | 
var iSO2Filter = iSO2Filter_example; // String | 
var phoneCodeFilter = phoneCodeFilter_example; // String | 
var capitalFilter = capitalFilter_example; // String | 
var currencyFilter = currencyFilter_example; // String | 
var nativeNameFilter = nativeNameFilter_example; // String | 
var regionFilter = regionFilter_example; // String | 
var subregionFilter = subregionFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppCountriesGetcountriestoexcelGet(filter, nameFilter, iSO3Filter, iSO2Filter, phoneCodeFilter, capitalFilter, currencyFilter, nativeNameFilter, regionFilter, subregionFilter);
    print(result);
} catch (e) {
    print("Exception when calling CountriesApi->apiServicesAppCountriesGetcountriestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **iSO3Filter** | **String**|  | [optional] 
 **iSO2Filter** | **String**|  | [optional] 
 **phoneCodeFilter** | **String**|  | [optional] 
 **capitalFilter** | **String**|  | [optional] 
 **currencyFilter** | **String**|  | [optional] 
 **nativeNameFilter** | **String**|  | [optional] 
 **regionFilter** | **String**|  | [optional] 
 **subregionFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCountriesGetcountryforeditGet**
> GetCountryForEditOutput apiServicesAppCountriesGetcountryforeditGet(id)

ApiServicesAppCountriesGetcountryforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CountriesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCountriesGetcountryforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling CountriesApi->apiServicesAppCountriesGetcountryforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetCountryForEditOutput**](GetCountryForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCountriesGetcountryforviewGet**
> GetCountryForViewDto apiServicesAppCountriesGetcountryforviewGet(id)

ApiServicesAppCountriesGetcountryforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CountriesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCountriesGetcountryforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling CountriesApi->apiServicesAppCountriesGetcountryforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetCountryForViewDto**](GetCountryForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCountriesWholePost**
> ListResultDtoOfGetCountryForViewDto apiServicesAppCountriesWholePost()

ApiServicesAppCountriesWholePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CountriesApi();

try { 
    var result = api_instance.apiServicesAppCountriesWholePost();
    print(result);
} catch (e) {
    print("Exception when calling CountriesApi->apiServicesAppCountriesWholePost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfGetCountryForViewDto**](ListResultDtoOfGetCountryForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

