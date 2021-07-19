part of swagger.api;

class GenderType {
  /// The underlying value of this enum member.
  int? value;

  GenderType._internal(this.value);

  static GenderType number0_ = GenderType._internal(0);
  static GenderType number1_ = GenderType._internal(1);

  GenderType.fromJson(dynamic data) {
    switch (data) {
          case 0: value = data; break;
          case 1: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(GenderType data) {
    return data.value;
  }
}

