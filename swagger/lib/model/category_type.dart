part of swagger.api;

class CategoryType {
  /// The underlying value of this enum member.
  int value;

  CategoryType._internal(this.value);

  static CategoryType number1_ = CategoryType._internal(1);

  CategoryType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CategoryType data) {
    return data.value;
  }
}

