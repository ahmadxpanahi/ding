# swagger.api.WebLogApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppWeblogDownloadweblogsPost**](WebLogApi.md#apiServicesAppWeblogDownloadweblogsPost) | **POST** /api/services/app/WebLog/DownloadWebLogs | ApiServicesAppWeblogDownloadweblogsPost
[**apiServicesAppWeblogGetlatestweblogsGet**](WebLogApi.md#apiServicesAppWeblogGetlatestweblogsGet) | **GET** /api/services/app/WebLog/GetLatestWebLogs | ApiServicesAppWeblogGetlatestweblogsGet


# **apiServicesAppWeblogDownloadweblogsPost**
> FileDto apiServicesAppWeblogDownloadweblogsPost()

ApiServicesAppWeblogDownloadweblogsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebLogApi();

try { 
    var result = api_instance.apiServicesAppWeblogDownloadweblogsPost();
    print(result);
} catch (e) {
    print("Exception when calling WebLogApi->apiServicesAppWeblogDownloadweblogsPost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWeblogGetlatestweblogsGet**
> GetLatestWebLogsOutput apiServicesAppWeblogGetlatestweblogsGet()

ApiServicesAppWeblogGetlatestweblogsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebLogApi();

try { 
    var result = api_instance.apiServicesAppWeblogGetlatestweblogsGet();
    print(result);
} catch (e) {
    print("Exception when calling WebLogApi->apiServicesAppWeblogGetlatestweblogsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetLatestWebLogsOutput**](GetLatestWebLogsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

