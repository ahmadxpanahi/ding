part of swagger.api;

class SalesSummaryDatePeriod {
  /// The underlying value of this enum member.
  int? value;

  SalesSummaryDatePeriod._internal(this.value);

  static SalesSummaryDatePeriod number1_ = SalesSummaryDatePeriod._internal(1);
  static SalesSummaryDatePeriod number2_ = SalesSummaryDatePeriod._internal(2);
  static SalesSummaryDatePeriod number3_ = SalesSummaryDatePeriod._internal(3);

  SalesSummaryDatePeriod.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(SalesSummaryDatePeriod data) {
    return data.value;
  }
}

