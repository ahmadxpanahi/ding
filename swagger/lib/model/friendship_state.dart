part of swagger.api;

class FriendshipState {
  /// The underlying value of this enum member.
  int value;

  FriendshipState._internal(this.value);

  static FriendshipState number1_ = FriendshipState._internal(1);
  static FriendshipState number2_ = FriendshipState._internal(2);

  FriendshipState.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(FriendshipState data) {
    return data.value;
  }
}

