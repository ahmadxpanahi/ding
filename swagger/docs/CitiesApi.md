# swagger.api.CitiesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppCitiesCreateoreditPost**](CitiesApi.md#apiServicesAppCitiesCreateoreditPost) | **POST** /api/services/app/Cities/CreateOrEdit | ApiServicesAppCitiesCreateoreditPost
[**apiServicesAppCitiesDeleteDelete**](CitiesApi.md#apiServicesAppCitiesDeleteDelete) | **DELETE** /api/services/app/Cities/Delete | ApiServicesAppCitiesDeleteDelete
[**apiServicesAppCitiesGetallGet**](CitiesApi.md#apiServicesAppCitiesGetallGet) | **GET** /api/services/app/Cities/GetAll | ApiServicesAppCitiesGetallGet
[**apiServicesAppCitiesGetallcountryforlookuptableGet**](CitiesApi.md#apiServicesAppCitiesGetallcountryforlookuptableGet) | **GET** /api/services/app/Cities/GetAllCountryForLookupTable | ApiServicesAppCitiesGetallcountryforlookuptableGet
[**apiServicesAppCitiesGetallstateforlookuptableGet**](CitiesApi.md#apiServicesAppCitiesGetallstateforlookuptableGet) | **GET** /api/services/app/Cities/GetAllStateForLookupTable | ApiServicesAppCitiesGetallstateforlookuptableGet
[**apiServicesAppCitiesGetcitiestoexcelGet**](CitiesApi.md#apiServicesAppCitiesGetcitiestoexcelGet) | **GET** /api/services/app/Cities/GetCitiesToExcel | ApiServicesAppCitiesGetcitiestoexcelGet
[**apiServicesAppCitiesGetcityforeditGet**](CitiesApi.md#apiServicesAppCitiesGetcityforeditGet) | **GET** /api/services/app/Cities/GetCityForEdit | ApiServicesAppCitiesGetcityforeditGet
[**apiServicesAppCitiesGetcityforviewGet**](CitiesApi.md#apiServicesAppCitiesGetcityforviewGet) | **GET** /api/services/app/Cities/GetCityForView | ApiServicesAppCitiesGetcityforviewGet
[**apiServicesAppCitiesWholebystatePost**](CitiesApi.md#apiServicesAppCitiesWholebystatePost) | **POST** /api/services/app/Cities/WholeByState | ApiServicesAppCitiesWholebystatePost


# **apiServicesAppCitiesCreateoreditPost**
> apiServicesAppCitiesCreateoreditPost(body)

ApiServicesAppCitiesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesApi();
var body = new CreateOrEditCityDto(); // CreateOrEditCityDto | 

try { 
    api_instance.apiServicesAppCitiesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling CitiesApi->apiServicesAppCitiesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditCityDto**](CreateOrEditCityDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCitiesDeleteDelete**
> apiServicesAppCitiesDeleteDelete(id)

ApiServicesAppCitiesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppCitiesDeleteDelete(id);
} catch (e) {
    print("Exception when calling CitiesApi->apiServicesAppCitiesDeleteDelete: $e\n");
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

# **apiServicesAppCitiesGetallGet**
> PagedResultDtoOfGetCityForViewDto apiServicesAppCitiesGetallGet(filter, nameFilter, stateCodeFilter, countryCodeFilter, stateNameFilter, countryNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppCitiesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesApi();
var filter = filter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var stateCodeFilter = stateCodeFilter_example; // String | 
var countryCodeFilter = countryCodeFilter_example; // String | 
var stateNameFilter = stateNameFilter_example; // String | 
var countryNameFilter = countryNameFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCitiesGetallGet(filter, nameFilter, stateCodeFilter, countryCodeFilter, stateNameFilter, countryNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling CitiesApi->apiServicesAppCitiesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **stateCodeFilter** | **String**|  | [optional] 
 **countryCodeFilter** | **String**|  | [optional] 
 **stateNameFilter** | **String**|  | [optional] 
 **countryNameFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetCityForViewDto**](PagedResultDtoOfGetCityForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCitiesGetallcountryforlookuptableGet**
> PagedResultDtoOfCityCountryLookupTableDto apiServicesAppCitiesGetallcountryforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppCitiesGetallcountryforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCitiesGetallcountryforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling CitiesApi->apiServicesAppCitiesGetallcountryforlookuptableGet: $e\n");
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

[**PagedResultDtoOfCityCountryLookupTableDto**](PagedResultDtoOfCityCountryLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCitiesGetallstateforlookuptableGet**
> PagedResultDtoOfCityStateLookupTableDto apiServicesAppCitiesGetallstateforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppCitiesGetallstateforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCitiesGetallstateforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling CitiesApi->apiServicesAppCitiesGetallstateforlookuptableGet: $e\n");
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

[**PagedResultDtoOfCityStateLookupTableDto**](PagedResultDtoOfCityStateLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCitiesGetcitiestoexcelGet**
> FileDto apiServicesAppCitiesGetcitiestoexcelGet(filter, nameFilter, stateCodeFilter, countryCodeFilter, stateNameFilter, countryNameFilter)

ApiServicesAppCitiesGetcitiestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesApi();
var filter = filter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var stateCodeFilter = stateCodeFilter_example; // String | 
var countryCodeFilter = countryCodeFilter_example; // String | 
var stateNameFilter = stateNameFilter_example; // String | 
var countryNameFilter = countryNameFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppCitiesGetcitiestoexcelGet(filter, nameFilter, stateCodeFilter, countryCodeFilter, stateNameFilter, countryNameFilter);
    print(result);
} catch (e) {
    print("Exception when calling CitiesApi->apiServicesAppCitiesGetcitiestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **stateCodeFilter** | **String**|  | [optional] 
 **countryCodeFilter** | **String**|  | [optional] 
 **stateNameFilter** | **String**|  | [optional] 
 **countryNameFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCitiesGetcityforeditGet**
> GetCityForEditOutput apiServicesAppCitiesGetcityforeditGet(id)

ApiServicesAppCitiesGetcityforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCitiesGetcityforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling CitiesApi->apiServicesAppCitiesGetcityforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetCityForEditOutput**](GetCityForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCitiesGetcityforviewGet**
> GetCityForViewDto apiServicesAppCitiesGetcityforviewGet(id)

ApiServicesAppCitiesGetcityforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCitiesGetcityforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling CitiesApi->apiServicesAppCitiesGetcityforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetCityForViewDto**](GetCityForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCitiesWholebystatePost**
> ListResultDtoOfGetCityForViewDto apiServicesAppCitiesWholebystatePost(stateId)

ApiServicesAppCitiesWholebystatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesApi();
var stateId = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCitiesWholebystatePost(stateId);
    print(result);
} catch (e) {
    print("Exception when calling CitiesApi->apiServicesAppCitiesWholebystatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stateId** | **int**|  | [optional] 

### Return type

[**ListResultDtoOfGetCityForViewDto**](ListResultDtoOfGetCityForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

