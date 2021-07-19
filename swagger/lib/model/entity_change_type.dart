part of swagger.api;

class EntityChangeType {
  /// The underlying value of this enum member.
  int value;

  EntityChangeType._internal(this.value);

  static EntityChangeType number0_ = EntityChangeType._internal(0);
  static EntityChangeType number1_ = EntityChangeType._internal(1);
  static EntityChangeType number2_ = EntityChangeType._internal(2);

  EntityChangeType.fromJson(dynamic data) {
    switch (data) {
          case 0: value = data; break;
          case 1: value = data; break;
          case 2: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(EntityChangeType data) {
    return data.value;
  }
}

