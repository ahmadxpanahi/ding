# swagger.api.StripePaymentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppStripepaymentCreatepaymentsessionPost**](StripePaymentApi.md#apiServicesAppStripepaymentCreatepaymentsessionPost) | **POST** /api/services/app/StripePayment/CreatePaymentSession | ApiServicesAppStripepaymentCreatepaymentsessionPost
[**apiServicesAppStripepaymentGetconfigurationGet**](StripePaymentApi.md#apiServicesAppStripepaymentGetconfigurationGet) | **GET** /api/services/app/StripePayment/GetConfiguration | ApiServicesAppStripepaymentGetconfigurationGet
[**apiServicesAppStripepaymentGetpaymentGet**](StripePaymentApi.md#apiServicesAppStripepaymentGetpaymentGet) | **GET** /api/services/app/StripePayment/GetPayment | ApiServicesAppStripepaymentGetpaymentGet
[**apiServicesAppStripepaymentGetpaymentresultGet**](StripePaymentApi.md#apiServicesAppStripepaymentGetpaymentresultGet) | **GET** /api/services/app/StripePayment/GetPaymentResult | ApiServicesAppStripepaymentGetpaymentresultGet


# **apiServicesAppStripepaymentCreatepaymentsessionPost**
> String apiServicesAppStripepaymentCreatepaymentsessionPost(body)

ApiServicesAppStripepaymentCreatepaymentsessionPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StripePaymentApi();
var body = new StripeCreatePaymentSessionInput(); // StripeCreatePaymentSessionInput | 

try { 
    var result = api_instance.apiServicesAppStripepaymentCreatepaymentsessionPost(body);
    print(result);
} catch (e) {
    print("Exception when calling StripePaymentApi->apiServicesAppStripepaymentCreatepaymentsessionPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**StripeCreatePaymentSessionInput**](StripeCreatePaymentSessionInput.md)|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppStripepaymentGetconfigurationGet**
> StripeConfigurationDto apiServicesAppStripepaymentGetconfigurationGet()

ApiServicesAppStripepaymentGetconfigurationGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StripePaymentApi();

try { 
    var result = api_instance.apiServicesAppStripepaymentGetconfigurationGet();
    print(result);
} catch (e) {
    print("Exception when calling StripePaymentApi->apiServicesAppStripepaymentGetconfigurationGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StripeConfigurationDto**](StripeConfigurationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppStripepaymentGetpaymentGet**
> SubscriptionPaymentDto apiServicesAppStripepaymentGetpaymentGet(stripeSessionId)

ApiServicesAppStripepaymentGetpaymentGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StripePaymentApi();
var stripeSessionId = stripeSessionId_example; // String | 

try { 
    var result = api_instance.apiServicesAppStripepaymentGetpaymentGet(stripeSessionId);
    print(result);
} catch (e) {
    print("Exception when calling StripePaymentApi->apiServicesAppStripepaymentGetpaymentGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stripeSessionId** | **String**|  | [optional] 

### Return type

[**SubscriptionPaymentDto**](SubscriptionPaymentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppStripepaymentGetpaymentresultGet**
> StripePaymentResultOutput apiServicesAppStripepaymentGetpaymentresultGet(paymentId)

ApiServicesAppStripepaymentGetpaymentresultGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StripePaymentApi();
var paymentId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppStripepaymentGetpaymentresultGet(paymentId);
    print(result);
} catch (e) {
    print("Exception when calling StripePaymentApi->apiServicesAppStripepaymentGetpaymentresultGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **int**|  | [optional] 

### Return type

[**StripePaymentResultOutput**](StripePaymentResultOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

