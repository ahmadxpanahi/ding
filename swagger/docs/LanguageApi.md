# swagger.api.LanguageApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppLanguageCreateorupdatelanguagePost**](LanguageApi.md#apiServicesAppLanguageCreateorupdatelanguagePost) | **POST** /api/services/app/Language/CreateOrUpdateLanguage | ApiServicesAppLanguageCreateorupdatelanguagePost
[**apiServicesAppLanguageDeletelanguageDelete**](LanguageApi.md#apiServicesAppLanguageDeletelanguageDelete) | **DELETE** /api/services/app/Language/DeleteLanguage | ApiServicesAppLanguageDeletelanguageDelete
[**apiServicesAppLanguageGetlanguageforeditGet**](LanguageApi.md#apiServicesAppLanguageGetlanguageforeditGet) | **GET** /api/services/app/Language/GetLanguageForEdit | ApiServicesAppLanguageGetlanguageforeditGet
[**apiServicesAppLanguageGetlanguagesGet**](LanguageApi.md#apiServicesAppLanguageGetlanguagesGet) | **GET** /api/services/app/Language/GetLanguages | ApiServicesAppLanguageGetlanguagesGet
[**apiServicesAppLanguageGetlanguagetextsGet**](LanguageApi.md#apiServicesAppLanguageGetlanguagetextsGet) | **GET** /api/services/app/Language/GetLanguageTexts | ApiServicesAppLanguageGetlanguagetextsGet
[**apiServicesAppLanguageSetdefaultlanguagePost**](LanguageApi.md#apiServicesAppLanguageSetdefaultlanguagePost) | **POST** /api/services/app/Language/SetDefaultLanguage | ApiServicesAppLanguageSetdefaultlanguagePost
[**apiServicesAppLanguageUpdatelanguagetextPut**](LanguageApi.md#apiServicesAppLanguageUpdatelanguagetextPut) | **PUT** /api/services/app/Language/UpdateLanguageText | ApiServicesAppLanguageUpdatelanguagetextPut


# **apiServicesAppLanguageCreateorupdatelanguagePost**
> apiServicesAppLanguageCreateorupdatelanguagePost(body)

ApiServicesAppLanguageCreateorupdatelanguagePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LanguageApi();
var body = new CreateOrUpdateLanguageInput(); // CreateOrUpdateLanguageInput | 

try { 
    api_instance.apiServicesAppLanguageCreateorupdatelanguagePost(body);
} catch (e) {
    print("Exception when calling LanguageApi->apiServicesAppLanguageCreateorupdatelanguagePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrUpdateLanguageInput**](CreateOrUpdateLanguageInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppLanguageDeletelanguageDelete**
> apiServicesAppLanguageDeletelanguageDelete(id)

ApiServicesAppLanguageDeletelanguageDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LanguageApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppLanguageDeletelanguageDelete(id);
} catch (e) {
    print("Exception when calling LanguageApi->apiServicesAppLanguageDeletelanguageDelete: $e\n");
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

# **apiServicesAppLanguageGetlanguageforeditGet**
> GetLanguageForEditOutput apiServicesAppLanguageGetlanguageforeditGet(id)

ApiServicesAppLanguageGetlanguageforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LanguageApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppLanguageGetlanguageforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling LanguageApi->apiServicesAppLanguageGetlanguageforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetLanguageForEditOutput**](GetLanguageForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppLanguageGetlanguagesGet**
> GetLanguagesOutput apiServicesAppLanguageGetlanguagesGet()

ApiServicesAppLanguageGetlanguagesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LanguageApi();

try { 
    var result = api_instance.apiServicesAppLanguageGetlanguagesGet();
    print(result);
} catch (e) {
    print("Exception when calling LanguageApi->apiServicesAppLanguageGetlanguagesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetLanguagesOutput**](GetLanguagesOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppLanguageGetlanguagetextsGet**
> PagedResultDtoOfLanguageTextListDto apiServicesAppLanguageGetlanguagetextsGet(sourceName, targetLanguageName, maxResultCount, skipCount, sorting, baseLanguageName, targetValueFilter, filterText)

ApiServicesAppLanguageGetlanguagetextsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LanguageApi();
var sourceName = sourceName_example; // String | 
var targetLanguageName = targetLanguageName_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 
var sorting = sorting_example; // String | 
var baseLanguageName = baseLanguageName_example; // String | 
var targetValueFilter = targetValueFilter_example; // String | 
var filterText = filterText_example; // String | 

try { 
    var result = api_instance.apiServicesAppLanguageGetlanguagetextsGet(sourceName, targetLanguageName, maxResultCount, skipCount, sorting, baseLanguageName, targetValueFilter, filterText);
    print(result);
} catch (e) {
    print("Exception when calling LanguageApi->apiServicesAppLanguageGetlanguagetextsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceName** | **String**|  | 
 **targetLanguageName** | **String**|  | 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **baseLanguageName** | **String**|  | [optional] 
 **targetValueFilter** | **String**|  | [optional] 
 **filterText** | **String**|  | [optional] 

### Return type

[**PagedResultDtoOfLanguageTextListDto**](PagedResultDtoOfLanguageTextListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppLanguageSetdefaultlanguagePost**
> apiServicesAppLanguageSetdefaultlanguagePost(body)

ApiServicesAppLanguageSetdefaultlanguagePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LanguageApi();
var body = new SetDefaultLanguageInput(); // SetDefaultLanguageInput | 

try { 
    api_instance.apiServicesAppLanguageSetdefaultlanguagePost(body);
} catch (e) {
    print("Exception when calling LanguageApi->apiServicesAppLanguageSetdefaultlanguagePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SetDefaultLanguageInput**](SetDefaultLanguageInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppLanguageUpdatelanguagetextPut**
> apiServicesAppLanguageUpdatelanguagetextPut(body)

ApiServicesAppLanguageUpdatelanguagetextPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new LanguageApi();
var body = new UpdateLanguageTextInput(); // UpdateLanguageTextInput | 

try { 
    api_instance.apiServicesAppLanguageUpdatelanguagetextPut(body);
} catch (e) {
    print("Exception when calling LanguageApi->apiServicesAppLanguageUpdatelanguagetextPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateLanguageTextInput**](UpdateLanguageTextInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

