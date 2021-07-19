# swagger.api.PayPalPaymentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppPaypalpaymentConfirmpaymentPost**](PayPalPaymentApi.md#apiServicesAppPaypalpaymentConfirmpaymentPost) | **POST** /api/services/app/PayPalPayment/ConfirmPayment | ApiServicesAppPaypalpaymentConfirmpaymentPost
[**apiServicesAppPaypalpaymentGetconfigurationGet**](PayPalPaymentApi.md#apiServicesAppPaypalpaymentGetconfigurationGet) | **GET** /api/services/app/PayPalPayment/GetConfiguration | ApiServicesAppPaypalpaymentGetconfigurationGet


# **apiServicesAppPaypalpaymentConfirmpaymentPost**
> apiServicesAppPaypalpaymentConfirmpaymentPost(paymentId, paypalOrderId)

ApiServicesAppPaypalpaymentConfirmpaymentPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PayPalPaymentApi();
var paymentId = 789; // int | 
var paypalOrderId = paypalOrderId_example; // String | 

try { 
    api_instance.apiServicesAppPaypalpaymentConfirmpaymentPost(paymentId, paypalOrderId);
} catch (e) {
    print("Exception when calling PayPalPaymentApi->apiServicesAppPaypalpaymentConfirmpaymentPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **int**|  | [optional] 
 **paypalOrderId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaypalpaymentGetconfigurationGet**
> PayPalConfigurationDto apiServicesAppPaypalpaymentGetconfigurationGet()

ApiServicesAppPaypalpaymentGetconfigurationGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PayPalPaymentApi();

try { 
    var result = api_instance.apiServicesAppPaypalpaymentGetconfigurationGet();
    print(result);
} catch (e) {
    print("Exception when calling PayPalPaymentApi->apiServicesAppPaypalpaymentGetconfigurationGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PayPalConfigurationDto**](PayPalConfigurationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

