# swagger.api.InvoiceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppInvoiceCreateinvoicePost**](InvoiceApi.md#apiServicesAppInvoiceCreateinvoicePost) | **POST** /api/services/app/Invoice/CreateInvoice | ApiServicesAppInvoiceCreateinvoicePost
[**apiServicesAppInvoiceGetinvoiceinfoGet**](InvoiceApi.md#apiServicesAppInvoiceGetinvoiceinfoGet) | **GET** /api/services/app/Invoice/GetInvoiceInfo | ApiServicesAppInvoiceGetinvoiceinfoGet


# **apiServicesAppInvoiceCreateinvoicePost**
?> apiServicesAppInvoiceCreateinvoicePost(body)

ApiServicesAppInvoiceCreateinvoicePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoiceApi();
var body = new CreateInvoiceDto(); // CreateInvoiceDto | 

try { 
    api_instance.apiServicesAppInvoiceCreateinvoicePost(body);
} catch (e) {
    print("Exception when calling InvoiceApi->apiServicesAppInvoiceCreateinvoicePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateInvoiceDto**](CreateInvoiceDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppInvoiceGetinvoiceinfoGet**
> InvoiceDto apiServicesAppInvoiceGetinvoiceinfoGet(id)

ApiServicesAppInvoiceGetinvoiceinfoGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new InvoiceApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppInvoiceGetinvoiceinfoGet(id);
    print(result);
} catch (e) {
    print("Exception when calling InvoiceApi->apiServicesAppInvoiceGetinvoiceinfoGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**InvoiceDto**](InvoiceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

