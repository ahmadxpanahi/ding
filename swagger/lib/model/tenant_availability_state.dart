part of swagger.api;

class TenantAvailabilityState {
  /// The underlying value of this enum member.
  int? value;

  TenantAvailabilityState._internal(this.value);

  static TenantAvailabilityState number1_ = TenantAvailabilityState._internal(1);
  static TenantAvailabilityState number2_ = TenantAvailabilityState._internal(2);
  static TenantAvailabilityState number3_ = TenantAvailabilityState._internal(3);

  TenantAvailabilityState.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(TenantAvailabilityState data) {
    return data.value;
  }
}

