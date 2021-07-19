# swagger.api.TimingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppTimingGettimezonecomboboxitemsGet**](TimingApi.md#apiServicesAppTimingGettimezonecomboboxitemsGet) | **GET** /api/services/app/Timing/GetTimezoneComboboxItems | ApiServicesAppTimingGettimezonecomboboxitemsGet
[**apiServicesAppTimingGettimezonesGet**](TimingApi.md#apiServicesAppTimingGettimezonesGet) | **GET** /api/services/app/Timing/GetTimezones | ApiServicesAppTimingGettimezonesGet


# **apiServicesAppTimingGettimezonecomboboxitemsGet**
> List<ComboboxItemDto?> apiServicesAppTimingGettimezonecomboboxitemsGet(selectedTimezoneId)

ApiServicesAppTimingGettimezonecomboboxitemsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TimingApi();
var selectedTimezoneId = selectedTimezoneId_example; // String | 

try { 
    var result = api_instance.apiServicesAppTimingGettimezonecomboboxitemsGet(selectedTimezoneId);
    print(result);
} catch (e) {
    print("Exception when calling TimingApi->apiServicesAppTimingGettimezonecomboboxitemsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **selectedTimezoneId** | **String**|  | [optional] 

### Return type

[**List<ComboboxItemDto>**](ComboboxItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTimingGettimezonesGet**
> ListResultDtoOfNameValueDto apiServicesAppTimingGettimezonesGet(defaultTimezoneScope)

ApiServicesAppTimingGettimezonesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TimingApi();
var defaultTimezoneScope = defaultTimezoneScope_example; // String | 

try { 
    var result = api_instance.apiServicesAppTimingGettimezonesGet(defaultTimezoneScope);
    print(result);
} catch (e) {
    print("Exception when calling TimingApi->apiServicesAppTimingGettimezonesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **defaultTimezoneScope** | **String**|  | 

### Return type

[**ListResultDtoOfNameValueDto**](ListResultDtoOfNameValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

