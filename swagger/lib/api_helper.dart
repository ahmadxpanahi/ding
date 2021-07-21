part of swagger.api;

const _delimiters = const {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};

// port from Java version
Iterable<QueryParam> _convertParametersForCollectionFormat(
  String collectionFormat, String name, dynamic value) {
  var params = <QueryParam>[];

  // preconditions
  if (name == null || name.isEmpty || value == null) return params;

  if (value is! List) {
    params.add(new QueryParam(name, parameterToString(value)));
    return params;
  }

  List values = value;

  // get the collection format
  collectionFormat = (collectionFormat == null || collectionFormat.isEmpty)
                     ? "csv"
                     : collectionFormat; // default: csv

  if (collectionFormat == "multi") {
    return values.map((v) => new QueryParam(name, parameterToString(v)));
  }

  String delimiter = _delimiters[collectionFormat] ?? ",";

  params.add(new QueryParam(name, values.map((v) => parameterToString(v)).join(delimiter)));
  return params;
}

/// Format the given parameter object into string.
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  } else if (value is DateTime) {
    return value.toUtc().toIso8601String();
  } else if (value is CategoryType) {
    return CategoryType.encode(value).toString();
  } else if (value is ChartDateInterval) {
    return ChartDateInterval.encode(value).toString();
  } else if (value is ChatMessageReadState) {
    return ChatMessageReadState.encode(value).toString();
  } else if (value is ChatSide) {
    return ChatSide.encode(value).toString();
  } else if (value is DefinitionsCategoryType) {
    return DefinitionsCategoryType.encode(value).toString();
  } else if (value is DegreeType) {
    return DegreeType.encode(value).toString();
  } else if (value is DeviceStatus) {
    return DeviceStatus.encode(value).toString();
  } else if (value is EditionType) {
    return EditionType.encode(value).toString();
  } else if (value is EnteringLeavingType) {
    return EnteringLeavingType.encode(value).toString();
  } else if (value is EntityChangeType) {
    return EntityChangeType.encode(value).toString();
  } else if (value is EventType) {
    return EventType.encode(value).toString();
  } else if (value is FriendshipState) {
    return FriendshipState.encode(value).toString();
  } else if (value is GenderType) {
    return GenderType.encode(value).toString();
  } else if (value is HttpStatusCode) {
    return HttpStatusCode.encode(value).toString();
  } else if (value is IntroduceType) {
    return IntroduceType.encode(value).toString();
  } else if (value is NotificationSeverity) {
    return NotificationSeverity.encode(value).toString();
  } else if (value is RequestStatus) {
    return RequestStatus.encode(value).toString();
  } else if (value is RequestType) {
    return RequestType.encode(value).toString();
  } else if (value is SalesSummaryDatePeriod) {
    return SalesSummaryDatePeriod.encode(value).toString();
  } else if (value is SettingScopes) {
    return SettingScopes.encode(value).toString();
  } else if (value is SubscriptionPaymentGatewayType) {
    return SubscriptionPaymentGatewayType.encode(value).toString();
  } else if (value is SubscriptionPaymentStatus) {
    return SubscriptionPaymentStatus.encode(value).toString();
  } else if (value is SubscriptionPaymentType) {
    return SubscriptionPaymentType.encode(value).toString();
  } else if (value is SubscriptionStartType) {
    return SubscriptionStartType.encode(value).toString();
  } else if (value is SupportStatus) {
    return SupportStatus.encode(value).toString();
  } else if (value is SupportType) {
    return SupportType.encode(value).toString();
  } else if (value is TenantAvailabilityState) {
    return TenantAvailabilityState.encode(value).toString();
  } else if (value is UserClockInOutType) {
    return UserClockInOutType.encode(value).toString();
  } else if (value is UserNotificationState) {
    return UserNotificationState.encode(value).toString();
  } else if (value is UserWorkScheduleAbnormalities) {
    return UserWorkScheduleAbnormalities.encode(value).toString();
  } else if (value is WeekDays) {
    return WeekDays.encode(value).toString();
  } else if (value is WorkModelType) {
    return WorkModelType.encode(value).toString();
  } else {
    return value.toString();
  }
}
