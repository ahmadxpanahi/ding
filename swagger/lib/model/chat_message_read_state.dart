part of swagger.api;

class ChatMessageReadState {
  /// The underlying value of this enum member.
  int value;

  ChatMessageReadState._internal(this.value);

  static ChatMessageReadState number1_ = ChatMessageReadState._internal(1);
  static ChatMessageReadState number2_ = ChatMessageReadState._internal(2);

  ChatMessageReadState.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ChatMessageReadState data) {
    return data.value;
  }
}

