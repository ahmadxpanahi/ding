part of swagger.api;

class ChartDateInterval {
  /// The underlying value of this enum member.
  int value;

  ChartDateInterval._internal(this.value);

  static ChartDateInterval number1_ = ChartDateInterval._internal(1);
  static ChartDateInterval number2_ = ChartDateInterval._internal(2);
  static ChartDateInterval number3_ = ChartDateInterval._internal(3);

  ChartDateInterval.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ChartDateInterval data) {
    return data.value;
  }
}

