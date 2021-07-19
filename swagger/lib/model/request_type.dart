part of swagger.api;

class RequestType {
  /// The underlying value of this enum member.
  int value;

  RequestType._internal(this.value);

  static RequestType number1_ = RequestType._internal(1);
  static RequestType number2_ = RequestType._internal(2);
  static RequestType number3_ = RequestType._internal(3);
  static RequestType number4_ = RequestType._internal(4);
  static RequestType number5_ = RequestType._internal(5);
  static RequestType number6_ = RequestType._internal(6);

  RequestType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
          case 5: value = data; break;
          case 6: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(RequestType data) {
    return data.value;
  }
}

