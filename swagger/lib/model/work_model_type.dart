part of swagger.api;

class WorkModelType {
  /// The underlying value of this enum member.
  int value;

  WorkModelType._internal(this.value);

  static WorkModelType number1_ = WorkModelType._internal(1);
  static WorkModelType number2_ = WorkModelType._internal(2);
  static WorkModelType number3_ = WorkModelType._internal(3);
  static WorkModelType number4_ = WorkModelType._internal(4);

  WorkModelType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(WorkModelType data) {
    return data.value;
  }
}

