# swagger.api.StatesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppStatesCreateoreditPost**](StatesApi.md#apiServicesAppStatesCreateoreditPost) | **POST** /api/services/app/States/CreateOrEdit | ApiServicesAppStatesCreateoreditPost
[**apiServicesAppStatesDeleteDelete**](StatesApi.md#apiServicesAppStatesDeleteDelete) | **DELETE** /api/services/app/States/Delete | ApiServicesAppStatesDeleteDelete
[**apiServicesAppStatesGetallGet**](StatesApi.md#apiServicesAppStatesGetallGet) | **GET** /api/services/app/States/GetAll | ApiServicesAppStatesGetallGet
[**apiServicesAppStatesGetallcountryforlookuptableGet**](StatesApi.md#apiServicesAppStatesGetallcountryforlookuptableGet) | **GET** /api/services/app/States/GetAllCountryForLookupTable | ApiServicesAppStatesGetallcountryforlookuptableGet
[**apiServicesAppStatesGetstateforeditGet**](StatesApi.md#apiServicesAppStatesGetstateforeditGet) | **GET** /api/services/app/States/GetStateForEdit | ApiServicesAppStatesGetstateforeditGet
[**apiServicesAppStatesGetstateforviewGet**](StatesApi.md#apiServicesAppStatesGetstateforviewGet) | **GET** /api/services/app/States/GetStateForView | ApiServicesAppStatesGetstateforviewGet
[**apiServicesAppStatesGetstatestoexcelGet**](StatesApi.md#apiServicesAppStatesGetstatestoexcelGet) | **GET** /api/services/app/States/GetStatesToExcel | ApiServicesAppStatesGetstatestoexcelGet
[**apiServicesAppStatesWholebycountryPost**](StatesApi.md#apiServicesAppStatesWholebycountryPost) | **POST** /api/services/app/States/WholeByCountry | ApiServicesAppStatesWholebycountryPost


# **apiServicesAppStatesCreateoreditPost**
> apiServicesAppStatesCreateoreditPost(body)

ApiServicesAppStatesCreateoreditPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StatesApi();
var body = new CreateOrEditStateDto(); // CreateOrEditStateDto | 

try { 
    api_instance.apiServicesAppStatesCreateoreditPost(body);
} catch (e) {
    print("Exception when calling StatesApi->apiServicesAppStatesCreateoreditPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditStateDto**](CreateOrEditStateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppStatesDeleteDelete**
> apiServicesAppStatesDeleteDelete(id)

ApiServicesAppStatesDeleteDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StatesApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppStatesDeleteDelete(id);
} catch (e) {
    print("Exception when calling StatesApi->apiServicesAppStatesDeleteDelete: $e\n");
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

# **apiServicesAppStatesGetallGet**
> PagedResultDtoOfGetStateForViewDto apiServicesAppStatesGetallGet(filter, nameFilter, countryCodeFilter, stateCodeFilter, countryNameFilter, sorting, skipCount, maxResultCount)

ApiServicesAppStatesGetallGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StatesApi();
var filter = filter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var countryCodeFilter = countryCodeFilter_example; // String | 
var stateCodeFilter = stateCodeFilter_example; // String | 
var countryNameFilter = countryNameFilter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppStatesGetallGet(filter, nameFilter, countryCodeFilter, stateCodeFilter, countryNameFilter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->apiServicesAppStatesGetallGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **countryCodeFilter** | **String**|  | [optional] 
 **stateCodeFilter** | **String**|  | [optional] 
 **countryNameFilter** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetStateForViewDto**](PagedResultDtoOfGetStateForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppStatesGetallcountryforlookuptableGet**
> PagedResultDtoOfStateCountryLookupTableDto apiServicesAppStatesGetallcountryforlookuptableGet(filter, sorting, skipCount, maxResultCount)

ApiServicesAppStatesGetallcountryforlookuptableGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StatesApi();
var filter = filter_example; // String | 
var sorting = sorting_example; // String | 
var skipCount = 56; // int | 
var maxResultCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppStatesGetallcountryforlookuptableGet(filter, sorting, skipCount, maxResultCount);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->apiServicesAppStatesGetallcountryforlookuptableGet: $e\n");
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

[**PagedResultDtoOfStateCountryLookupTableDto**](PagedResultDtoOfStateCountryLookupTableDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppStatesGetstateforeditGet**
> GetStateForEditOutput apiServicesAppStatesGetstateforeditGet(id)

ApiServicesAppStatesGetstateforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StatesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppStatesGetstateforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->apiServicesAppStatesGetstateforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetStateForEditOutput**](GetStateForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppStatesGetstateforviewGet**
> GetStateForViewDto apiServicesAppStatesGetstateforviewGet(id)

ApiServicesAppStatesGetstateforviewGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StatesApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppStatesGetstateforviewGet(id);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->apiServicesAppStatesGetstateforviewGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetStateForViewDto**](GetStateForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppStatesGetstatestoexcelGet**
> FileDto apiServicesAppStatesGetstatestoexcelGet(filter, nameFilter, countryCodeFilter, stateCodeFilter, countryNameFilter)

ApiServicesAppStatesGetstatestoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StatesApi();
var filter = filter_example; // String | 
var nameFilter = nameFilter_example; // String | 
var countryCodeFilter = countryCodeFilter_example; // String | 
var stateCodeFilter = stateCodeFilter_example; // String | 
var countryNameFilter = countryNameFilter_example; // String | 

try { 
    var result = api_instance.apiServicesAppStatesGetstatestoexcelGet(filter, nameFilter, countryCodeFilter, stateCodeFilter, countryNameFilter);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->apiServicesAppStatesGetstatestoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **nameFilter** | **String**|  | [optional] 
 **countryCodeFilter** | **String**|  | [optional] 
 **stateCodeFilter** | **String**|  | [optional] 
 **countryNameFilter** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppStatesWholebycountryPost**
> ListResultDtoOfGetStateForViewDto apiServicesAppStatesWholebycountryPost(countryId)

ApiServicesAppStatesWholebycountryPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StatesApi();
var countryId = 56; // int | 

try { 
    var result = api_instance.apiServicesAppStatesWholebycountryPost(countryId);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->apiServicesAppStatesWholebycountryPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryId** | **int**|  | [optional] 

### Return type

[**ListResultDtoOfGetStateForViewDto**](ListResultDtoOfGetStateForViewDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

