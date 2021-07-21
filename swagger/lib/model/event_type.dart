part of swagger.api;

class EventType {
  /// The underlying value of this enum member.
  int? value;

  EventType._internal(this.value);

  static EventType number1_ = EventType._internal(1);
  static EventType number2_ = EventType._internal(2);

  EventType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(EventType data) {
    return data.value;
  }
}

