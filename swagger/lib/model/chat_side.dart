part of swagger.api;

class ChatSide {
  /// The underlying value of this enum member.
  int value;

  ChatSide._internal(this.value);

  static ChatSide number1_ = ChatSide._internal(1);
  static ChatSide number2_ = ChatSide._internal(2);

  ChatSide.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ChatSide data) {
    return data.value;
  }
}

