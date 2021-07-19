part of swagger.api;

class EditionType {
  /// The underlying value of this enum member.
  int value;

  EditionType._internal(this.value);

  static EditionType number0_ = EditionType._internal(0);
  static EditionType number1_ = EditionType._internal(1);

  EditionType.fromJson(dynamic data) {
    switch (data) {
          case 0: value = data; break;
          case 1: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(EditionType data) {
    return data.value;
  }
}

