part of swagger.api;

class DefinitionsCategoryType {
  /// The underlying value of this enum member.
  int value;

  DefinitionsCategoryType._internal(this.value);

  static DefinitionsCategoryType number1_ = DefinitionsCategoryType._internal(1);

  DefinitionsCategoryType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DefinitionsCategoryType data) {
    return data.value;
  }
}

