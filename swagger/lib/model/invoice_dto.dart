part of swagger.api;

class InvoiceDto {
  
  double? totalPrice = null;
  

  double? deductionPrice = null;
  

  SubscribableEdition? subscribableEdition = null;
  

  int? remainingDaysCount = null;
  

  int? maxUserCount = null;
  

  int? maxLocationCount = null;
  

  String? invoiceNo = null;
  

  DateTime? invoiceDate = null;
  

  String? tenantLegalName = null;
  

  List<String> tenantAddress = [];
  

  String? tenantTaxNo = null;
  

  String? hostLegalName = null;
  

  List<String> hostAddress = [];
  
  InvoiceDto();

  @override
  String toString() {
    return 'InvoiceDto[totalPrice=$totalPrice, deductionPrice=$deductionPrice, subscribableEdition=$subscribableEdition, remainingDaysCount=$remainingDaysCount, maxUserCount=$maxUserCount, maxLocationCount=$maxLocationCount, invoiceNo=$invoiceNo, invoiceDate=$invoiceDate, tenantLegalName=$tenantLegalName, tenantAddress=$tenantAddress, tenantTaxNo=$tenantTaxNo, hostLegalName=$hostLegalName, hostAddress=$hostAddress, ]';
  }

  InvoiceDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalPrice =
        json['totalPrice'] == null ? null : json['totalPrice'].toDouble()
    ;
    deductionPrice =
        json['deductionPrice'] == null ? null : json['deductionPrice'].toDouble()
    ;
    subscribableEdition =
      
      
      new SubscribableEdition.fromJson(json['subscribableEdition'])
;
    remainingDaysCount =
        json['remainingDaysCount']
    ;
    maxUserCount =
        json['maxUserCount']
    ;
    maxLocationCount =
        json['maxLocationCount']
    ;
    invoiceNo =
        json['invoiceNo']
    ;
    invoiceDate = json['invoiceDate'] == null ? null : DateTime.parse(json['invoiceDate']);
    tenantLegalName =
        json['tenantLegalName']
    ;
    tenantAddress =
        (json['tenantAddress'] as List).map((item) => item as String).toList()
    ;
    tenantTaxNo =
        json['tenantTaxNo']
    ;
    hostLegalName =
        json['hostLegalName']
    ;
    hostAddress =
        (json['hostAddress'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalPrice': totalPrice,
      'deductionPrice': deductionPrice,
      'subscribableEdition': subscribableEdition,
      'remainingDaysCount': remainingDaysCount,
      'maxUserCount': maxUserCount,
      'maxLocationCount': maxLocationCount,
      'invoiceNo': invoiceNo,
      'invoiceDate': invoiceDate == null ? '' : invoiceDate!.toUtc().toIso8601String(),
      'tenantLegalName': tenantLegalName,
      'tenantAddress': tenantAddress,
      'tenantTaxNo': tenantTaxNo,
      'hostLegalName': hostLegalName,
      'hostAddress': hostAddress
     };
  }

  static List<InvoiceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<InvoiceDto>() : json.map((value) => new InvoiceDto.fromJson(value)).toList();
  }

  static Map<String, InvoiceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InvoiceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InvoiceDto.fromJson(value));
    }
    return map;
  }
}

