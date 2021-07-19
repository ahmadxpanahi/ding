part of swagger.api;

class DeviceStatus {
  /// The underlying value of this enum member.
  int value;

  DeviceStatus._internal(this.value);

  static DeviceStatus number1_ = DeviceStatus._internal(1);
  static DeviceStatus number2_ = DeviceStatus._internal(2);
  static DeviceStatus number3_ = DeviceStatus._internal(3);
  static DeviceStatus number4_ = DeviceStatus._internal(4);
  static DeviceStatus number5_ = DeviceStatus._internal(5);

  DeviceStatus.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
          case 5: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DeviceStatus data) {
    return data.value;
  }
}

