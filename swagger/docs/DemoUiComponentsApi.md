# swagger.api.DemoUiComponentsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDemouicomponentsGetcountriesGet**](DemoUiComponentsApi.md#apiServicesAppDemouicomponentsGetcountriesGet) | **GET** /api/services/app/DemoUiComponents/GetCountries | ApiServicesAppDemouicomponentsGetcountriesGet
[**apiServicesAppDemouicomponentsSendandgetdatePost**](DemoUiComponentsApi.md#apiServicesAppDemouicomponentsSendandgetdatePost) | **POST** /api/services/app/DemoUiComponents/SendAndGetDate | ApiServicesAppDemouicomponentsSendandgetdatePost
[**apiServicesAppDemouicomponentsSendandgetdaterangePost**](DemoUiComponentsApi.md#apiServicesAppDemouicomponentsSendandgetdaterangePost) | **POST** /api/services/app/DemoUiComponents/SendAndGetDateRange | ApiServicesAppDemouicomponentsSendandgetdaterangePost
[**apiServicesAppDemouicomponentsSendandgetdatetimePost**](DemoUiComponentsApi.md#apiServicesAppDemouicomponentsSendandgetdatetimePost) | **POST** /api/services/app/DemoUiComponents/SendAndGetDateTime | ApiServicesAppDemouicomponentsSendandgetdatetimePost
[**apiServicesAppDemouicomponentsSendandgetselectedcountriesPost**](DemoUiComponentsApi.md#apiServicesAppDemouicomponentsSendandgetselectedcountriesPost) | **POST** /api/services/app/DemoUiComponents/SendAndGetSelectedCountries | ApiServicesAppDemouicomponentsSendandgetselectedcountriesPost
[**apiServicesAppDemouicomponentsSendandgetvaluePost**](DemoUiComponentsApi.md#apiServicesAppDemouicomponentsSendandgetvaluePost) | **POST** /api/services/app/DemoUiComponents/SendAndGetValue | ApiServicesAppDemouicomponentsSendandgetvaluePost


# **apiServicesAppDemouicomponentsGetcountriesGet**
> List<NameValueOfString> apiServicesAppDemouicomponentsGetcountriesGet(searchTerm)

ApiServicesAppDemouicomponentsGetcountriesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DemoUiComponentsApi();
var searchTerm = searchTerm_example; // String | 

try { 
    var result = api_instance.apiServicesAppDemouicomponentsGetcountriesGet(searchTerm);
    print(result);
} catch (e) {
    print("Exception when calling DemoUiComponentsApi->apiServicesAppDemouicomponentsGetcountriesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | **String**|  | [optional] 

### Return type

[**List<NameValueOfString>**](NameValueOfString.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDemouicomponentsSendandgetdatePost**
> DateToStringOutput apiServicesAppDemouicomponentsSendandgetdatePost(date)

ApiServicesAppDemouicomponentsSendandgetdatePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DemoUiComponentsApi();
var date = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppDemouicomponentsSendandgetdatePost(date);
    print(result);
} catch (e) {
    print("Exception when calling DemoUiComponentsApi->apiServicesAppDemouicomponentsSendandgetdatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**|  | [optional] 

### Return type

[**DateToStringOutput**](DateToStringOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDemouicomponentsSendandgetdaterangePost**
> DateToStringOutput apiServicesAppDemouicomponentsSendandgetdaterangePost(startDate, endDate)

ApiServicesAppDemouicomponentsSendandgetdaterangePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DemoUiComponentsApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppDemouicomponentsSendandgetdaterangePost(startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling DemoUiComponentsApi->apiServicesAppDemouicomponentsSendandgetdaterangePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**DateToStringOutput**](DateToStringOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDemouicomponentsSendandgetdatetimePost**
> DateToStringOutput apiServicesAppDemouicomponentsSendandgetdatetimePost(date)

ApiServicesAppDemouicomponentsSendandgetdatetimePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DemoUiComponentsApi();
var date = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppDemouicomponentsSendandgetdatetimePost(date);
    print(result);
} catch (e) {
    print("Exception when calling DemoUiComponentsApi->apiServicesAppDemouicomponentsSendandgetdatetimePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**|  | [optional] 

### Return type

[**DateToStringOutput**](DateToStringOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDemouicomponentsSendandgetselectedcountriesPost**
> List<NameValueOfString> apiServicesAppDemouicomponentsSendandgetselectedcountriesPost(body)

ApiServicesAppDemouicomponentsSendandgetselectedcountriesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DemoUiComponentsApi();
var body = [new List&lt;NameValueOfString&gt;()]; // List<NameValueOfString> | 

try { 
    var result = api_instance.apiServicesAppDemouicomponentsSendandgetselectedcountriesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling DemoUiComponentsApi->apiServicesAppDemouicomponentsSendandgetselectedcountriesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;NameValueOfString&gt;**](NameValueOfString.md)|  | [optional] 

### Return type

[**List<NameValueOfString>**](NameValueOfString.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDemouicomponentsSendandgetvaluePost**
> StringOutput apiServicesAppDemouicomponentsSendandgetvaluePost(input)

ApiServicesAppDemouicomponentsSendandgetvaluePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DemoUiComponentsApi();
var input = input_example; // String | 

try { 
    var result = api_instance.apiServicesAppDemouicomponentsSendandgetvaluePost(input);
    print(result);
} catch (e) {
    print("Exception when calling DemoUiComponentsApi->apiServicesAppDemouicomponentsSendandgetvaluePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | **String**|  | [optional] 

### Return type

[**StringOutput**](StringOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

