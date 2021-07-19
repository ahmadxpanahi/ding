part of swagger.api;



class ReportsDevicesApi {
  final ApiClient apiClient;

  ReportsDevicesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppReportsdevicesGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetDeviceForViewDto> apiServicesAppReportsdevicesGetallGet({ String filter, String serialNumberFilter, String qRCodeFilter, String bssIdFilter, String ssIdFilter, String uuIdFilter, String majorFilter, String minorFilter, String nameFilter, String deviceTypeTitleFilter, int deviceStatusIdFilter, String sorting, int skipCount, int maxResultCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/ReportsDevices/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(serialNumberFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SerialNumberFilter", serialNumberFilter));
    }
    if(qRCodeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "QRCodeFilter", qRCodeFilter));
    }
    if(bssIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "BssIdFilter", bssIdFilter));
    }
    if(ssIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SsIdFilter", ssIdFilter));
    }
    if(uuIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UuIdFilter", uuIdFilter));
    }
    if(majorFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MajorFilter", majorFilter));
    }
    if(minorFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinorFilter", minorFilter));
    }
    if(nameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NameFilter", nameFilter));
    }
    if(deviceTypeTitleFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DeviceTypeTitleFilter", deviceTypeTitleFilter));
    }
    if(deviceStatusIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DeviceStatusIdFilter", deviceStatusIdFilter));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
    }
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetDeviceForViewDto') as PagedResultDtoOfGetDeviceForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppReportsdevicesGetdevicestoexcelGet
  ///
  /// 
  Future<FileDto> apiServicesAppReportsdevicesGetdevicestoexcelGet({ String filter, String serialNumberFilter, String qRCodeFilter, String bssIdFilter, String ssIdFilter, String uuIdFilter, String majorFilter, String minorFilter, String nameFilter, String deviceTypeTitleFilter, int deviceStatusIdFilter }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/ReportsDevices/GetDevicesToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(serialNumberFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SerialNumberFilter", serialNumberFilter));
    }
    if(qRCodeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "QRCodeFilter", qRCodeFilter));
    }
    if(bssIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "BssIdFilter", bssIdFilter));
    }
    if(ssIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SsIdFilter", ssIdFilter));
    }
    if(uuIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UuIdFilter", uuIdFilter));
    }
    if(majorFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MajorFilter", majorFilter));
    }
    if(minorFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinorFilter", minorFilter));
    }
    if(nameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NameFilter", nameFilter));
    }
    if(deviceTypeTitleFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DeviceTypeTitleFilter", deviceTypeTitleFilter));
    }
    if(deviceStatusIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DeviceStatusIdFilter", deviceStatusIdFilter));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'FileDto') as FileDto ;
    } else {
      return null;
    }
  }
}
