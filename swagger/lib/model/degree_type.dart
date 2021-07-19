part of swagger.api;

class DegreeType {
  /// The underlying value of this enum member.
  int value;

  DegreeType._internal(this.value);

  static DegreeType number0_ = DegreeType._internal(0);
  static DegreeType number1_ = DegreeType._internal(1);
  static DegreeType number2_ = DegreeType._internal(2);
  static DegreeType number3_ = DegreeType._internal(3);
  static DegreeType number4_ = DegreeType._internal(4);
  static DegreeType number5_ = DegreeType._internal(5);
  static DegreeType number6_ = DegreeType._internal(6);
  static DegreeType number7_ = DegreeType._internal(7);
  static DegreeType number8_ = DegreeType._internal(8);

  DegreeType.fromJson(dynamic data) {
    switch (data) {
          case 0: value = data; break;
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
          case 5: value = data; break;
          case 6: value = data; break;
          case 7: value = data; break;
          case 8: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DegreeType data) {
    return data.value;
  }
}

