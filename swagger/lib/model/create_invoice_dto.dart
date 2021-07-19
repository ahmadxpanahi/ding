part of swagger.api;

class CreateInvoiceDto {
  
  int subscriptionPaymentId = null;
  
  CreateInvoiceDto();

  @override
  String toString() {
    return 'CreateInvoiceDto[subscriptionPaymentId=$subscriptionPaymentId, ]';
  }

  CreateInvoiceDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subscriptionPaymentId =
        json['subscriptionPaymentId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'subscriptionPaymentId': subscriptionPaymentId
     };
  }

  static List<CreateInvoiceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateInvoiceDto>() : json.map((value) => new CreateInvoiceDto.fromJson(value)).toList();
  }

  static Map<String, CreateInvoiceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateInvoiceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateInvoiceDto.fromJson(value));
    }
    return map;
  }
}

