part of swagger.api;

class RequestStatus {
  /// The underlying value of this enum member.
  int value;

  RequestStatus._internal(this.value);

  static RequestStatus number1_ = RequestStatus._internal(1);
  static RequestStatus number2_ = RequestStatus._internal(2);
  static RequestStatus number3_ = RequestStatus._internal(3);

  RequestStatus.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(RequestStatus data) {
    return data.value;
  }
}

