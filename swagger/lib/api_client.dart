part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client;

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://www.example.com", this.client}) {
    _authentications['Bearer'] = new ApiKeyAuth("header", "Authorization");
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String? targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AcceptFriendshipRequestInput':
          return new AcceptFriendshipRequestInput.fromJson(value);
        case 'ActivateEmailInput':
          return new ActivateEmailInput.fromJson(value);
        case 'ActivateWebhookSubscriptionInput':
          return new ActivateWebhookSubscriptionInput.fromJson(value);
        case 'AddNewPageInput':
          return new AddNewPageInput.fromJson(value);
        case 'AddNewPageOutput':
          return new AddNewPageOutput.fromJson(value);
        case 'AddWidgetInput':
          return new AddWidgetInput.fromJson(value);
        case 'AdditionalData':
          return new AdditionalData.fromJson(value);
        case 'AllAvailableDevicesDto':
          return new AllAvailableDevicesDto.fromJson(value);
        case 'AppSettingsJsonDto':
          return new AppSettingsJsonDto.fromJson(value);
        case 'ApplicationInfoDto':
          return new ApplicationInfoDto.fromJson(value);
        case 'ApplicationLanguageEditDto':
          return new ApplicationLanguageEditDto.fromJson(value);
        case 'ApplicationLanguageListDto':
          return new ApplicationLanguageListDto.fromJson(value);
        case 'AuditLogListDto':
          return new AuditLogListDto.fromJson(value);
        case 'AuthenticateByTenantModel':
          return new AuthenticateByTenantModel.fromJson(value);
        case 'AuthenticateModel':
          return new AuthenticateModel.fromJson(value);
        case 'AuthenticateResultModel':
          return new AuthenticateResultModel.fromJson(value);
        case 'BlockUserInput':
          return new BlockUserInput.fromJson(value);
        case 'CacheDto':
          return new CacheDto.fromJson(value);
        case 'CalendarDto':
          return new CalendarDto.fromJson(value);
        case 'CancelPaymentDto':
          return new CancelPaymentDto.fromJson(value);
        case 'CategoryDto':
          return new CategoryDto.fromJson(value);
        case 'CategoryRoleListDto':
          return new CategoryRoleListDto.fromJson(value);
        case 'CategoryType':
           return new CategoryType.fromJson(value);
        case 'CategoryUserListDto':
          return new CategoryUserListDto.fromJson(value);
        case 'ChangePasswordInput':
          return new ChangePasswordInput.fromJson(value);
        case 'ChangeTenantAdminInput':
          return new ChangeTenantAdminInput.fromJson(value);
        case 'ChangeUserLanguageDto':
          return new ChangeUserLanguageDto.fromJson(value);
        case 'ChartDateInterval':
           return new ChartDateInterval.fromJson(value);
        case 'ChatMessageDto':
          return new ChatMessageDto.fromJson(value);
        case 'ChatMessageReadState':
           return new ChatMessageReadState.fromJson(value);
        case 'ChatSide':
           return new ChatSide.fromJson(value);
        case 'CheckDatabaseOutput':
          return new CheckDatabaseOutput.fromJson(value);
        case 'CityCountryLookupTableDto':
          return new CityCountryLookupTableDto.fromJson(value);
        case 'CityDto':
          return new CityDto.fromJson(value);
        case 'CityStateLookupTableDto':
          return new CityStateLookupTableDto.fromJson(value);
        case 'CleanValuesInput':
          return new CleanValuesInput.fromJson(value);
        case 'ComboboxItemDto':
          return new ComboboxItemDto.fromJson(value);
        case 'CountryDto':
          return new CountryDto.fromJson(value);
        case 'CreateEditionDeviceDto':
          return new CreateEditionDeviceDto.fromJson(value);
        case 'CreateEditionDto':
          return new CreateEditionDto.fromJson(value);
        case 'CreateFriendshipRequestByUserNameInput':
          return new CreateFriendshipRequestByUserNameInput.fromJson(value);
        case 'CreateFriendshipRequestInput':
          return new CreateFriendshipRequestInput.fromJson(value);
        case 'CreateInvoiceDto':
          return new CreateInvoiceDto.fromJson(value);
        case 'CreateOrEditCalendarDto':
          return new CreateOrEditCalendarDto.fromJson(value);
        case 'CreateOrEditCategoryDto':
          return new CreateOrEditCategoryDto.fromJson(value);
        case 'CreateOrEditCityDto':
          return new CreateOrEditCityDto.fromJson(value);
        case 'CreateOrEditCountryDto':
          return new CreateOrEditCountryDto.fromJson(value);
        case 'CreateOrEditDeviceDto':
          return new CreateOrEditDeviceDto.fromJson(value);
        case 'CreateOrEditDeviceTypeDto':
          return new CreateOrEditDeviceTypeDto.fromJson(value);
        case 'CreateOrEditEnterLeaveDto':
          return new CreateOrEditEnterLeaveDto.fromJson(value);
        case 'CreateOrEditPurchasingResourceDto':
          return new CreateOrEditPurchasingResourceDto.fromJson(value);
        case 'CreateOrEditRequestDto':
          return new CreateOrEditRequestDto.fromJson(value);
        case 'CreateOrEditStateDto':
          return new CreateOrEditStateDto.fromJson(value);
        case 'CreateOrEditSupportDto':
          return new CreateOrEditSupportDto.fromJson(value);
        case 'CreateOrEditTenantDeviceDto':
          return new CreateOrEditTenantDeviceDto.fromJson(value);
        case 'CreateOrEditUserClockInOutDto':
          return new CreateOrEditUserClockInOutDto.fromJson(value);
        case 'CreateOrEditUserWorkScheduleDto':
          return new CreateOrEditUserWorkScheduleDto.fromJson(value);
        case 'CreateOrEditVacationTypeDto':
          return new CreateOrEditVacationTypeDto.fromJson(value);
        case 'CreateOrEditWorkScheduleDto':
          return new CreateOrEditWorkScheduleDto.fromJson(value);
        case 'CreateOrUpdateLanguageInput':
          return new CreateOrUpdateLanguageInput.fromJson(value);
        case 'CreateOrUpdateRoleInput':
          return new CreateOrUpdateRoleInput.fromJson(value);
        case 'CreateOrUpdateUserInput':
          return new CreateOrUpdateUserInput.fromJson(value);
        case 'CreateOrganizationUnitInput':
          return new CreateOrganizationUnitInput.fromJson(value);
        case 'CreatePaymentDto':
          return new CreatePaymentDto.fromJson(value);
        case 'CreateTenantInput':
          return new CreateTenantInput.fromJson(value);
        case 'CreateUserDelegationDto':
          return new CreateUserDelegationDto.fromJson(value);
        case 'CreateUserDeviceDto':
          return new CreateUserDeviceDto.fromJson(value);
        case 'CreateUserOnTenantInput':
          return new CreateUserOnTenantInput.fromJson(value);
        case 'CurrentUserProfileEditDto':
          return new CurrentUserProfileEditDto.fromJson(value);
        case 'Dashboard':
          return new Dashboard.fromJson(value);
        case 'DashboardOutput':
          return new DashboardOutput.fromJson(value);
        case 'DateToStringOutput':
          return new DateToStringOutput.fromJson(value);
        case 'DefinitionsCategoryType':
           return new DefinitionsCategoryType.fromJson(value);
        case 'DegreeType':
           return new DegreeType.fromJson(value);
        case 'DelegatedImpersonateInput':
          return new DelegatedImpersonateInput.fromJson(value);
        case 'DetailedUserClockInOutDto':
          return new DetailedUserClockInOutDto.fromJson(value);
        case 'DeviceDeviceTypeLookupTableDto':
          return new DeviceDeviceTypeLookupTableDto.fromJson(value);
        case 'DeviceDto':
          return new DeviceDto.fromJson(value);
        case 'DeviceStatus':
           return new DeviceStatus.fromJson(value);
        case 'DeviceTypeDto':
          return new DeviceTypeDto.fromJson(value);
        case 'DynamicEntityPropertyDto':
          return new DynamicEntityPropertyDto.fromJson(value);
        case 'DynamicEntityPropertyValueDto':
          return new DynamicEntityPropertyValueDto.fromJson(value);
        case 'DynamicPropertyDto':
          return new DynamicPropertyDto.fromJson(value);
        case 'DynamicPropertyValueDto':
          return new DynamicPropertyValueDto.fromJson(value);
        case 'EditEditionDeviceFeaturesDto':
          return new EditEditionDeviceFeaturesDto.fromJson(value);
        case 'EditMyDeviceDto':
          return new EditMyDeviceDto.fromJson(value);
        case 'EditionCreateDto':
          return new EditionCreateDto.fromJson(value);
        case 'EditionDeviceDto':
          return new EditionDeviceDto.fromJson(value);
        case 'EditionDevicePurchasingResourceLookupTableDto':
          return new EditionDevicePurchasingResourceLookupTableDto.fromJson(value);
        case 'EditionDeviceSubscribableEditionLookupTableDto':
          return new EditionDeviceSubscribableEditionLookupTableDto.fromJson(value);
        case 'EditionEditDto':
          return new EditionEditDto.fromJson(value);
        case 'EditionInfoDto':
          return new EditionInfoDto.fromJson(value);
        case 'EditionListDto':
          return new EditionListDto.fromJson(value);
        case 'EditionSelectDto':
          return new EditionSelectDto.fromJson(value);
        case 'EditionType':
           return new EditionType.fromJson(value);
        case 'EditionWithFeaturesDto':
          return new EditionWithFeaturesDto.fromJson(value);
        case 'EditionsSelectOutput':
          return new EditionsSelectOutput.fromJson(value);
        case 'EmailSettingsEditDto':
          return new EmailSettingsEditDto.fromJson(value);
        case 'EmployeeLeaveReportDto':
          return new EmployeeLeaveReportDto.fromJson(value);
        case 'EmployeeMissionReportDto':
          return new EmployeeMissionReportDto.fromJson(value);
        case 'EnterLeaveDto':
          return new EnterLeaveDto.fromJson(value);
        case 'EnteringLeavingType':
           return new EnteringLeavingType.fromJson(value);
        case 'EntityChangeListDto':
          return new EntityChangeListDto.fromJson(value);
        case 'EntityChangeType':
           return new EntityChangeType.fromJson(value);
        case 'EntityDto':
          return new EntityDto.fromJson(value);
        case 'EntityDtoOfGuid':
          return new EntityDtoOfGuid.fromJson(value);
        case 'EntityDtoOfInt64':
          return new EntityDtoOfInt64.fromJson(value);
        case 'EntityDtoOfString':
          return new EntityDtoOfString.fromJson(value);
        case 'EntityPropertyChangeDto':
          return new EntityPropertyChangeDto.fromJson(value);
        case 'EventType':
           return new EventType.fromJson(value);
        case 'ExpiringTenant':
          return new ExpiringTenant.fromJson(value);
        case 'ExternalAuthenticateModel':
          return new ExternalAuthenticateModel.fromJson(value);
        case 'ExternalAuthenticateResultModel':
          return new ExternalAuthenticateResultModel.fromJson(value);
        case 'ExternalLoginProviderInfoModel':
          return new ExternalLoginProviderInfoModel.fromJson(value);
        case 'ExternalLoginProviderSettingsEditDto':
          return new ExternalLoginProviderSettingsEditDto.fromJson(value);
        case 'ExternalLoginSettingsDto':
          return new ExternalLoginSettingsDto.fromJson(value);
        case 'FacebookExternalLoginProviderSettings':
          return new FacebookExternalLoginProviderSettings.fromJson(value);
        case 'FeatureInputTypeDto':
          return new FeatureInputTypeDto.fromJson(value);
        case 'FileDto':
          return new FileDto.fromJson(value);
        case 'FindCategoryRolesInput':
          return new FindCategoryRolesInput.fromJson(value);
        case 'FindCategoryUsersInput':
          return new FindCategoryUsersInput.fromJson(value);
        case 'FindOrganizationUnitRolesInput':
          return new FindOrganizationUnitRolesInput.fromJson(value);
        case 'FindOrganizationUnitUsersInput':
          return new FindOrganizationUnitUsersInput.fromJson(value);
        case 'FindUsersInput':
          return new FindUsersInput.fromJson(value);
        case 'FlatFeatureDto':
          return new FlatFeatureDto.fromJson(value);
        case 'FlatFeatureSelectDto':
          return new FlatFeatureSelectDto.fromJson(value);
        case 'FlatPermissionDto':
          return new FlatPermissionDto.fromJson(value);
        case 'FlatPermissionWithLevelDto':
          return new FlatPermissionWithLevelDto.fromJson(value);
        case 'FriendDto':
          return new FriendDto.fromJson(value);
        case 'FriendshipState':
           return new FriendshipState.fromJson(value);
        case 'GenderType':
           return new GenderType.fromJson(value);
        case 'GeneralSettingsEditDto':
          return new GeneralSettingsEditDto.fromJson(value);
        case 'GetAllAvailableWebhooksOutput':
          return new GetAllAvailableWebhooksOutput.fromJson(value);
        case 'GetAllDynamicEntityPropertyValuesOutput':
          return new GetAllDynamicEntityPropertyValuesOutput.fromJson(value);
        case 'GetAllDynamicEntityPropertyValuesOutputItem':
          return new GetAllDynamicEntityPropertyValuesOutputItem.fromJson(value);
        case 'GetAllEntitiesHasDynamicPropertyOutput':
          return new GetAllEntitiesHasDynamicPropertyOutput.fromJson(value);
        case 'GetAllForLookupTableInput':
          return new GetAllForLookupTableInput.fromJson(value);
        case 'GetAllSendAttemptsOfWebhookEventOutput':
          return new GetAllSendAttemptsOfWebhookEventOutput.fromJson(value);
        case 'GetAllSendAttemptsOutput':
          return new GetAllSendAttemptsOutput.fromJson(value);
        case 'GetAllSubscriptionsOutput':
          return new GetAllSubscriptionsOutput.fromJson(value);
        case 'GetCalendarForEditOutput':
          return new GetCalendarForEditOutput.fromJson(value);
        case 'GetCalendarForViewDto':
          return new GetCalendarForViewDto.fromJson(value);
        case 'GetCityForEditOutput':
          return new GetCityForEditOutput.fromJson(value);
        case 'GetCityForViewDto':
          return new GetCityForViewDto.fromJson(value);
        case 'GetCountryForEditOutput':
          return new GetCountryForEditOutput.fromJson(value);
        case 'GetCountryForViewDto':
          return new GetCountryForViewDto.fromJson(value);
        case 'GetCurrentLoginInformationsOutput':
          return new GetCurrentLoginInformationsOutput.fromJson(value);
        case 'GetDailySalesOutput':
          return new GetDailySalesOutput.fromJson(value);
        case 'GetDashboardDataOutput':
          return new GetDashboardDataOutput.fromJson(value);
        case 'GetDefaultEditionNameOutput':
          return new GetDefaultEditionNameOutput.fromJson(value);
        case 'GetDetailedEmployeeLeaveReportForViewDto':
          return new GetDetailedEmployeeLeaveReportForViewDto.fromJson(value);
        case 'GetDetailedEmployeeMissionReportForViewDto':
          return new GetDetailedEmployeeMissionReportForViewDto.fromJson(value);
        case 'GetDetailedEmployeeReportForViewDto':
          return new GetDetailedEmployeeReportForViewDto.fromJson(value);
        case 'GetDeviceDetailForRegistrationDto':
          return new GetDeviceDetailForRegistrationDto.fromJson(value);
        case 'GetDeviceForEditOutput':
          return new GetDeviceForEditOutput.fromJson(value);
        case 'GetDeviceForViewDto':
          return new GetDeviceForViewDto.fromJson(value);
        case 'GetDeviceSerialDto':
          return new GetDeviceSerialDto.fromJson(value);
        case 'GetDeviceTypeForEditOutput':
          return new GetDeviceTypeForEditOutput.fromJson(value);
        case 'GetDeviceTypeForViewDto':
          return new GetDeviceTypeForViewDto.fromJson(value);
        case 'GetEditionDeviceForViewDto':
          return new GetEditionDeviceForViewDto.fromJson(value);
        case 'GetEditionEditOutput':
          return new GetEditionEditOutput.fromJson(value);
        case 'GetEditionTenantStatisticsOutput':
          return new GetEditionTenantStatisticsOutput.fromJson(value);
        case 'GetEmployeeLeaveReportForViewDto':
          return new GetEmployeeLeaveReportForViewDto.fromJson(value);
        case 'GetEmployeeMissionReportForViewDto':
          return new GetEmployeeMissionReportForViewDto.fromJson(value);
        case 'GetEnterLeaveForEditOutput':
          return new GetEnterLeaveForEditOutput.fromJson(value);
        case 'GetEnterLeaveForViewDto':
          return new GetEnterLeaveForViewDto.fromJson(value);
        case 'GetExpiringTenantsOutput':
          return new GetExpiringTenantsOutput.fromJson(value);
        case 'GetGeneralStatsOutput':
          return new GetGeneralStatsOutput.fromJson(value);
        case 'GetIncomeStatisticsDataOutput':
          return new GetIncomeStatisticsDataOutput.fromJson(value);
        case 'GetLanguageForEditOutput':
          return new GetLanguageForEditOutput.fromJson(value);
        case 'GetLanguagesOutput':
          return new GetLanguagesOutput.fromJson(value);
        case 'GetLatestWebLogsOutput':
          return new GetLatestWebLogsOutput.fromJson(value);
        case 'GetMemberActivityOutput':
          return new GetMemberActivityOutput.fromJson(value);
        case 'GetNotificationSettingsOutput':
          return new GetNotificationSettingsOutput.fromJson(value);
        case 'GetNotificationsOutput':
          return new GetNotificationsOutput.fromJson(value);
        case 'GetPasswordComplexitySettingOutput':
          return new GetPasswordComplexitySettingOutput.fromJson(value);
        case 'GetProfilePictureOutput':
          return new GetProfilePictureOutput.fromJson(value);
        case 'GetProfitShareOutput':
          return new GetProfitShareOutput.fromJson(value);
        case 'GetPurchasingResourceForEditOutput':
          return new GetPurchasingResourceForEditOutput.fromJson(value);
        case 'GetPurchasingResourceForViewDto':
          return new GetPurchasingResourceForViewDto.fromJson(value);
        case 'GetRecentTenantsOutput':
          return new GetRecentTenantsOutput.fromJson(value);
        case 'GetRegionalStatsOutput':
          return new GetRegionalStatsOutput.fromJson(value);
        case 'GetReportsManagerForViewDto':
          return new GetReportsManagerForViewDto.fromJson(value);
        case 'GetReportsTenantForViewDto':
          return new GetReportsTenantForViewDto.fromJson(value);
        case 'GetRequestForEditOutput':
          return new GetRequestForEditOutput.fromJson(value);
        case 'GetRequestForViewDto':
          return new GetRequestForViewDto.fromJson(value);
        case 'GetRoleForEditOutput':
          return new GetRoleForEditOutput.fromJson(value);
        case 'GetSalesSummaryOutput':
          return new GetSalesSummaryOutput.fromJson(value);
        case 'GetStateForEditOutput':
          return new GetStateForEditOutput.fromJson(value);
        case 'GetStateForViewDto':
          return new GetStateForViewDto.fromJson(value);
        case 'GetSummaryEmployeeReportForViewDto':
          return new GetSummaryEmployeeReportForViewDto.fromJson(value);
        case 'GetSupportForViewDto':
          return new GetSupportForViewDto.fromJson(value);
        case 'GetTenantDeviceForViewDto':
          return new GetTenantDeviceForViewDto.fromJson(value);
        case 'GetTenantDevicesForUserDto':
          return new GetTenantDevicesForUserDto.fromJson(value);
        case 'GetTenantFeaturesEditOutput':
          return new GetTenantFeaturesEditOutput.fromJson(value);
        case 'GetTopStatsOutput':
          return new GetTopStatsOutput.fromJson(value);
        case 'GetUserChatFriendsWithSettingsOutput':
          return new GetUserChatFriendsWithSettingsOutput.fromJson(value);
        case 'GetUserClockInOutForEditOutput':
          return new GetUserClockInOutForEditOutput.fromJson(value);
        case 'GetUserClockInOutForViewDto':
          return new GetUserClockInOutForViewDto.fromJson(value);
        case 'GetUserDeviceForViewDto':
          return new GetUserDeviceForViewDto.fromJson(value);
        case 'GetUserForEditOutput':
          return new GetUserForEditOutput.fromJson(value);
        case 'GetUserPermissionsForEditOutput':
          return new GetUserPermissionsForEditOutput.fromJson(value);
        case 'GetUserWorkScheduleForEditOutput':
          return new GetUserWorkScheduleForEditOutput.fromJson(value);
        case 'GetUserWorkScheduleForViewDto':
          return new GetUserWorkScheduleForViewDto.fromJson(value);
        case 'GetVacationTypeForEditOutput':
          return new GetVacationTypeForEditOutput.fromJson(value);
        case 'GetVacationTypeForViewDto':
          return new GetVacationTypeForViewDto.fromJson(value);
        case 'GetWorkScheduleForEditOutput':
          return new GetWorkScheduleForEditOutput.fromJson(value);
        case 'GoogleExternalLoginProviderSettings':
          return new GoogleExternalLoginProviderSettings.fromJson(value);
        case 'HostBillingSettingsEditDto':
          return new HostBillingSettingsEditDto.fromJson(value);
        case 'HostSettingsEditDto':
          return new HostSettingsEditDto.fromJson(value);
        case 'HostUserManagementSettingsEditDto':
          return new HostUserManagementSettingsEditDto.fromJson(value);
        case 'HttpStatusCode':
           return new HttpStatusCode.fromJson(value);
        case 'IInputType':
          return new IInputType.fromJson(value);
        case 'IValueValidator':
          return new IValueValidator.fromJson(value);
        case 'ImpersonateInput':
          return new ImpersonateInput.fromJson(value);
        case 'ImpersonateOutput':
          return new ImpersonateOutput.fromJson(value);
        case 'ImpersonatedAuthenticateResultModel':
          return new ImpersonatedAuthenticateResultModel.fromJson(value);
        case 'IncomeStastistic':
          return new IncomeStastistic.fromJson(value);
        case 'InsertOrUpdateAllValuesInput':
          return new InsertOrUpdateAllValuesInput.fromJson(value);
        case 'InsertOrUpdateAllValuesInputItem':
          return new InsertOrUpdateAllValuesInputItem.fromJson(value);
        case 'InstallDto':
          return new InstallDto.fromJson(value);
        case 'IntroduceType':
           return new IntroduceType.fromJson(value);
        case 'InvoiceDto':
          return new InvoiceDto.fromJson(value);
        case 'IsTenantAvailableInput':
          return new IsTenantAvailableInput.fromJson(value);
        case 'IsTenantAvailableOutput':
          return new IsTenantAvailableOutput.fromJson(value);
        case 'JsonClaimMapDto':
          return new JsonClaimMapDto.fromJson(value);
        case 'LanguageTextListDto':
          return new LanguageTextListDto.fromJson(value);
        case 'LdapSettingsEditDto':
          return new LdapSettingsEditDto.fromJson(value);
        case 'LinkToUserInput':
          return new LinkToUserInput.fromJson(value);
        case 'LinkedUserDto':
          return new LinkedUserDto.fromJson(value);
        case 'ListResultDtoOfAllAvailableDevicesDto':
          return new ListResultDtoOfAllAvailableDevicesDto.fromJson(value);
        case 'ListResultDtoOfCacheDto':
          return new ListResultDtoOfCacheDto.fromJson(value);
        case 'ListResultDtoOfCategoryDto':
          return new ListResultDtoOfCategoryDto.fromJson(value);
        case 'ListResultDtoOfChatMessageDto':
          return new ListResultDtoOfChatMessageDto.fromJson(value);
        case 'ListResultDtoOfDynamicEntityPropertyDto':
          return new ListResultDtoOfDynamicEntityPropertyDto.fromJson(value);
        case 'ListResultDtoOfDynamicEntityPropertyValueDto':
          return new ListResultDtoOfDynamicEntityPropertyValueDto.fromJson(value);
        case 'ListResultDtoOfDynamicPropertyDto':
          return new ListResultDtoOfDynamicPropertyDto.fromJson(value);
        case 'ListResultDtoOfDynamicPropertyValueDto':
          return new ListResultDtoOfDynamicPropertyValueDto.fromJson(value);
        case 'ListResultDtoOfEditionListDto':
          return new ListResultDtoOfEditionListDto.fromJson(value);
        case 'ListResultDtoOfFlatPermissionWithLevelDto':
          return new ListResultDtoOfFlatPermissionWithLevelDto.fromJson(value);
        case 'ListResultDtoOfGetAllAvailableWebhooksOutput':
          return new ListResultDtoOfGetAllAvailableWebhooksOutput.fromJson(value);
        case 'ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput':
          return new ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput.fromJson(value);
        case 'ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput':
          return new ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput.fromJson(value);
        case 'ListResultDtoOfGetAllSubscriptionsOutput':
          return new ListResultDtoOfGetAllSubscriptionsOutput.fromJson(value);
        case 'ListResultDtoOfGetCalendarForViewDto':
          return new ListResultDtoOfGetCalendarForViewDto.fromJson(value);
        case 'ListResultDtoOfGetCityForViewDto':
          return new ListResultDtoOfGetCityForViewDto.fromJson(value);
        case 'ListResultDtoOfGetCountryForViewDto':
          return new ListResultDtoOfGetCountryForViewDto.fromJson(value);
        case 'ListResultDtoOfGetStateForViewDto':
          return new ListResultDtoOfGetStateForViewDto.fromJson(value);
        case 'ListResultDtoOfGetSupportForViewDto':
          return new ListResultDtoOfGetSupportForViewDto.fromJson(value);
        case 'ListResultDtoOfLinkedUserDto':
          return new ListResultDtoOfLinkedUserDto.fromJson(value);
        case 'ListResultDtoOfNameValueDto':
          return new ListResultDtoOfNameValueDto.fromJson(value);
        case 'ListResultDtoOfOrganizationUnitDto':
          return new ListResultDtoOfOrganizationUnitDto.fromJson(value);
        case 'ListResultDtoOfRoleListDto':
          return new ListResultDtoOfRoleListDto.fromJson(value);
        case 'ListResultDtoOfSubscribableEditionComboboxItemDto':
          return new ListResultDtoOfSubscribableEditionComboboxItemDto.fromJson(value);
        case 'ListResultDtoOfUserLoginAttemptDto':
          return new ListResultDtoOfUserLoginAttemptDto.fromJson(value);
        case 'LocalizableComboboxItemDto':
          return new LocalizableComboboxItemDto.fromJson(value);
        case 'LocalizableComboboxItemSourceDto':
          return new LocalizableComboboxItemSourceDto.fromJson(value);
        case 'MarkAllUnreadMessagesOfUserAsReadInput':
          return new MarkAllUnreadMessagesOfUserAsReadInput.fromJson(value);
        case 'MemberActivity':
          return new MemberActivity.fromJson(value);
        case 'MicrosoftExternalLoginProviderSettings':
          return new MicrosoftExternalLoginProviderSettings.fromJson(value);
        case 'MoveCategoryInput':
          return new MoveCategoryInput.fromJson(value);
        case 'MoveOrganizationUnitInput':
          return new MoveOrganizationUnitInput.fromJson(value);
        case 'MoveTenantsToAnotherEditionDto':
          return new MoveTenantsToAnotherEditionDto.fromJson(value);
        case 'NameValue':
          return new NameValue.fromJson(value);
        case 'NameValueDto':
          return new NameValueDto.fromJson(value);
        case 'NameValueOfString':
          return new NameValueOfString.fromJson(value);
        case 'NotificationData':
          return new NotificationData.fromJson(value);
        case 'NotificationSeverity':
           return new NotificationSeverity.fromJson(value);
        case 'NotificationSubscriptionDto':
          return new NotificationSubscriptionDto.fromJson(value);
        case 'NotificationSubscriptionWithDisplayNameDto':
          return new NotificationSubscriptionWithDisplayNameDto.fromJson(value);
        case 'OpenIdConnectExternalLoginProviderSettings':
          return new OpenIdConnectExternalLoginProviderSettings.fromJson(value);
        case 'OrganizationUnitDto':
          return new OrganizationUnitDto.fromJson(value);
        case 'OrganizationUnitRoleListDto':
          return new OrganizationUnitRoleListDto.fromJson(value);
        case 'OrganizationUnitUserListDto':
          return new OrganizationUnitUserListDto.fromJson(value);
        case 'OtherSettingsEditDto':
          return new OtherSettingsEditDto.fromJson(value);
        case 'Page':
          return new Page.fromJson(value);
        case 'PagedResultDtoOfAuditLogListDto':
          return new PagedResultDtoOfAuditLogListDto.fromJson(value);
        case 'PagedResultDtoOfCategoryRoleListDto':
          return new PagedResultDtoOfCategoryRoleListDto.fromJson(value);
        case 'PagedResultDtoOfCategoryUserListDto':
          return new PagedResultDtoOfCategoryUserListDto.fromJson(value);
        case 'PagedResultDtoOfCityCountryLookupTableDto':
          return new PagedResultDtoOfCityCountryLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfCityStateLookupTableDto':
          return new PagedResultDtoOfCityStateLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfDeviceDeviceTypeLookupTableDto':
          return new PagedResultDtoOfDeviceDeviceTypeLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto':
          return new PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto':
          return new PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfEntityChangeListDto':
          return new PagedResultDtoOfEntityChangeListDto.fromJson(value);
        case 'PagedResultDtoOfGetAllSendAttemptsOutput':
          return new PagedResultDtoOfGetAllSendAttemptsOutput.fromJson(value);
        case 'PagedResultDtoOfGetCityForViewDto':
          return new PagedResultDtoOfGetCityForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetCountryForViewDto':
          return new PagedResultDtoOfGetCountryForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetDeviceForViewDto':
          return new PagedResultDtoOfGetDeviceForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetDeviceTypeForViewDto':
          return new PagedResultDtoOfGetDeviceTypeForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetEditionDeviceForViewDto':
          return new PagedResultDtoOfGetEditionDeviceForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetEmployeeLeaveReportForViewDto':
          return new PagedResultDtoOfGetEmployeeLeaveReportForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetEmployeeMissionReportForViewDto':
          return new PagedResultDtoOfGetEmployeeMissionReportForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetEnterLeaveForViewDto':
          return new PagedResultDtoOfGetEnterLeaveForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetPurchasingResourceForViewDto':
          return new PagedResultDtoOfGetPurchasingResourceForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetReportsManagerForViewDto':
          return new PagedResultDtoOfGetReportsManagerForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetReportsTenantForViewDto':
          return new PagedResultDtoOfGetReportsTenantForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetRequestForViewDto':
          return new PagedResultDtoOfGetRequestForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetStateForViewDto':
          return new PagedResultDtoOfGetStateForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetSummaryEmployeeReportForViewDto':
          return new PagedResultDtoOfGetSummaryEmployeeReportForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetSupportForViewDto':
          return new PagedResultDtoOfGetSupportForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetTenantDeviceForViewDto':
          return new PagedResultDtoOfGetTenantDeviceForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetUserClockInOutForViewDto':
          return new PagedResultDtoOfGetUserClockInOutForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetUserDeviceForViewDto':
          return new PagedResultDtoOfGetUserDeviceForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetUserWorkScheduleForViewDto':
          return new PagedResultDtoOfGetUserWorkScheduleForViewDto.fromJson(value);
        case 'PagedResultDtoOfGetVacationTypeForViewDto':
          return new PagedResultDtoOfGetVacationTypeForViewDto.fromJson(value);
        case 'PagedResultDtoOfLanguageTextListDto':
          return new PagedResultDtoOfLanguageTextListDto.fromJson(value);
        case 'PagedResultDtoOfLinkedUserDto':
          return new PagedResultDtoOfLinkedUserDto.fromJson(value);
        case 'PagedResultDtoOfNameValueDto':
          return new PagedResultDtoOfNameValueDto.fromJson(value);
        case 'PagedResultDtoOfOrganizationUnitRoleListDto':
          return new PagedResultDtoOfOrganizationUnitRoleListDto.fromJson(value);
        case 'PagedResultDtoOfOrganizationUnitUserListDto':
          return new PagedResultDtoOfOrganizationUnitUserListDto.fromJson(value);
        case 'PagedResultDtoOfRequestUserLookupTableDto':
          return new PagedResultDtoOfRequestUserLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfStateCountryLookupTableDto':
          return new PagedResultDtoOfStateCountryLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfSubscriptionPaymentListDto':
          return new PagedResultDtoOfSubscriptionPaymentListDto.fromJson(value);
        case 'PagedResultDtoOfSupportDeviceLookupTableDto':
          return new PagedResultDtoOfSupportDeviceLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfSupportSupportLookupTableDto':
          return new PagedResultDtoOfSupportSupportLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfSupportUserLookupTableDto':
          return new PagedResultDtoOfSupportUserLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfTenantDeviceDeviceLookupTableDto':
          return new PagedResultDtoOfTenantDeviceDeviceLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfTenantDeviceTenantLookupTableDto':
          return new PagedResultDtoOfTenantDeviceTenantLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfTenantListDto':
          return new PagedResultDtoOfTenantListDto.fromJson(value);
        case 'PagedResultDtoOfUserDelegationDto':
          return new PagedResultDtoOfUserDelegationDto.fromJson(value);
        case 'PagedResultDtoOfUserDeviceDeviceLookupTableDto':
          return new PagedResultDtoOfUserDeviceDeviceLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfUserDeviceUserLookupTableDto':
          return new PagedResultDtoOfUserDeviceUserLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfUserListDto':
          return new PagedResultDtoOfUserListDto.fromJson(value);
        case 'PagedResultDtoOfUserWorkScheduleUserLookupTableDto':
          return new PagedResultDtoOfUserWorkScheduleUserLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto':
          return new PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto.fromJson(value);
        case 'PagedResultDtoOfWorkScheduleDto':
          return new PagedResultDtoOfWorkScheduleDto.fromJson(value);
        case 'PasswordComplexitySetting':
          return new PasswordComplexitySetting.fromJson(value);
        case 'PayPalConfigurationDto':
          return new PayPalConfigurationDto.fromJson(value);
        case 'PaymentGatewayModel':
          return new PaymentGatewayModel.fromJson(value);
        case 'PurchasingResourceDto':
          return new PurchasingResourceDto.fromJson(value);
        case 'RecentTenant':
          return new RecentTenant.fromJson(value);
        case 'RefreshTokenResult':
          return new RefreshTokenResult.fromJson(value);
        case 'RegionalStatCountry':
          return new RegionalStatCountry.fromJson(value);
        case 'RegisterInput':
          return new RegisterInput.fromJson(value);
        case 'RegisterOutput':
          return new RegisterOutput.fromJson(value);
        case 'RegisterTenantInput':
          return new RegisterTenantInput.fromJson(value);
        case 'RegisterTenantOutput':
          return new RegisterTenantOutput.fromJson(value);
        case 'RenamePageInput':
          return new RenamePageInput.fromJson(value);
        case 'ReportsManagerDto':
          return new ReportsManagerDto.fromJson(value);
        case 'ReportsTenantDto':
          return new ReportsTenantDto.fromJson(value);
        case 'RequestDto':
          return new RequestDto.fromJson(value);
        case 'RequestStatus':
           return new RequestStatus.fromJson(value);
        case 'RequestType':
           return new RequestType.fromJson(value);
        case 'RequestUserLookupTableDto':
          return new RequestUserLookupTableDto.fromJson(value);
        case 'ResetPasswordInput':
          return new ResetPasswordInput.fromJson(value);
        case 'ResetPasswordOutput':
          return new ResetPasswordOutput.fromJson(value);
        case 'ResolveTenantIdInput':
          return new ResolveTenantIdInput.fromJson(value);
        case 'RoleEditDto':
          return new RoleEditDto.fromJson(value);
        case 'RoleListDto':
          return new RoleListDto.fromJson(value);
        case 'RolesToCategoryInput':
          return new RolesToCategoryInput.fromJson(value);
        case 'RolesToOrganizationUnitInput':
          return new RolesToOrganizationUnitInput.fromJson(value);
        case 'SalesSummaryData':
          return new SalesSummaryData.fromJson(value);
        case 'SalesSummaryDatePeriod':
           return new SalesSummaryDatePeriod.fromJson(value);
        case 'SavePageInput':
          return new SavePageInput.fromJson(value);
        case 'SecuritySettingsEditDto':
          return new SecuritySettingsEditDto.fromJson(value);
        case 'SendEmailActivationLinkInput':
          return new SendEmailActivationLinkInput.fromJson(value);
        case 'SendPasswordResetCodeInput':
          return new SendPasswordResetCodeInput.fromJson(value);
        case 'SendTestEmailInput':
          return new SendTestEmailInput.fromJson(value);
        case 'SendTwoFactorAuthCodeModel':
          return new SendTwoFactorAuthCodeModel.fromJson(value);
        case 'SendVerificationSmsInputDto':
          return new SendVerificationSmsInputDto.fromJson(value);
        case 'SessionTimeOutSettingsEditDto':
          return new SessionTimeOutSettingsEditDto.fromJson(value);
        case 'SetDefaultLanguageInput':
          return new SetDefaultLanguageInput.fromJson(value);
        case 'SettingScopes':
           return new SettingScopes.fromJson(value);
        case 'StateCountryLookupTableDto':
          return new StateCountryLookupTableDto.fromJson(value);
        case 'StateDto':
          return new StateDto.fromJson(value);
        case 'StringOutput':
          return new StringOutput.fromJson(value);
        case 'StripeConfigurationDto':
          return new StripeConfigurationDto.fromJson(value);
        case 'StripeCreatePaymentSessionInput':
          return new StripeCreatePaymentSessionInput.fromJson(value);
        case 'StripePaymentResultOutput':
          return new StripePaymentResultOutput.fromJson(value);
        case 'SubscribableEdition':
          return new SubscribableEdition.fromJson(value);
        case 'SubscribableEditionComboboxItemDto':
          return new SubscribableEditionComboboxItemDto.fromJson(value);
        case 'SubscriptionDeviceEditionDto':
          return new SubscriptionDeviceEditionDto.fromJson(value);
        case 'SubscriptionPaymentDto':
          return new SubscriptionPaymentDto.fromJson(value);
        case 'SubscriptionPaymentGatewayType':
           return new SubscriptionPaymentGatewayType.fromJson(value);
        case 'SubscriptionPaymentListDto':
          return new SubscriptionPaymentListDto.fromJson(value);
        case 'SubscriptionPaymentStatus':
           return new SubscriptionPaymentStatus.fromJson(value);
        case 'SubscriptionPaymentType':
           return new SubscriptionPaymentType.fromJson(value);
        case 'SubscriptionStartType':
           return new SubscriptionStartType.fromJson(value);
        case 'SummaryEmployeeReportDto':
          return new SummaryEmployeeReportDto.fromJson(value);
        case 'SupportDeviceLookupTableDto':
          return new SupportDeviceLookupTableDto.fromJson(value);
        case 'SupportDto':
          return new SupportDto.fromJson(value);
        case 'SupportStatus':
           return new SupportStatus.fromJson(value);
        case 'SupportSupportLookupTableDto':
          return new SupportSupportLookupTableDto.fromJson(value);
        case 'SupportType':
           return new SupportType.fromJson(value);
        case 'SupportUserLookupTableDto':
          return new SupportUserLookupTableDto.fromJson(value);
        case 'SwitchToLinkedAccountInput':
          return new SwitchToLinkedAccountInput.fromJson(value);
        case 'SwitchToLinkedAccountOutput':
          return new SwitchToLinkedAccountOutput.fromJson(value);
        case 'SwitchedAccountAuthenticateResultModel':
          return new SwitchedAccountAuthenticateResultModel.fromJson(value);
        case 'TenantAvailabilityState':
           return new TenantAvailabilityState.fromJson(value);
        case 'TenantBillingSettingsEditDto':
          return new TenantBillingSettingsEditDto.fromJson(value);
        case 'TenantDeviceDeviceLookupTableDto':
          return new TenantDeviceDeviceLookupTableDto.fromJson(value);
        case 'TenantDeviceDto':
          return new TenantDeviceDto.fromJson(value);
        case 'TenantDeviceTenantLookupTableDto':
          return new TenantDeviceTenantLookupTableDto.fromJson(value);
        case 'TenantEditDto':
          return new TenantEditDto.fromJson(value);
        case 'TenantEdition':
          return new TenantEdition.fromJson(value);
        case 'TenantEmailSettingsEditDto':
          return new TenantEmailSettingsEditDto.fromJson(value);
        case 'TenantFileProtocolSettingsEditDto':
          return new TenantFileProtocolSettingsEditDto.fromJson(value);
        case 'TenantFooterSettingsEditDto':
          return new TenantFooterSettingsEditDto.fromJson(value);
        case 'TenantListDto':
          return new TenantListDto.fromJson(value);
        case 'TenantLoginInfoDto':
          return new TenantLoginInfoDto.fromJson(value);
        case 'TenantManagementSettingsEditDto':
          return new TenantManagementSettingsEditDto.fromJson(value);
        case 'TenantNotification':
          return new TenantNotification.fromJson(value);
        case 'TenantOtherSettingsEditDto':
          return new TenantOtherSettingsEditDto.fromJson(value);
        case 'TenantSettingsEditDto':
          return new TenantSettingsEditDto.fromJson(value);
        case 'TenantUserManagementSettingsEditDto':
          return new TenantUserManagementSettingsEditDto.fromJson(value);
        case 'ThemeFooterSettingsDto':
          return new ThemeFooterSettingsDto.fromJson(value);
        case 'ThemeHeaderSettingsDto':
          return new ThemeHeaderSettingsDto.fromJson(value);
        case 'ThemeLayoutSettingsDto':
          return new ThemeLayoutSettingsDto.fromJson(value);
        case 'ThemeMenuSettingsDto':
          return new ThemeMenuSettingsDto.fromJson(value);
        case 'ThemeSettingsDto':
          return new ThemeSettingsDto.fromJson(value);
        case 'ThemeSubHeaderSettingsDto':
          return new ThemeSubHeaderSettingsDto.fromJson(value);
        case 'TopStatsData':
          return new TopStatsData.fromJson(value);
        case 'TwitterExternalLoginProviderSettings':
          return new TwitterExternalLoginProviderSettings.fromJson(value);
        case 'TwitterGetAccessTokenResponse':
          return new TwitterGetAccessTokenResponse.fromJson(value);
        case 'TwitterGetRequestTokenResponse':
          return new TwitterGetRequestTokenResponse.fromJson(value);
        case 'TwoFactorLoginSettingsEditDto':
          return new TwoFactorLoginSettingsEditDto.fromJson(value);
        case 'UiCustomizationSettingsDto':
          return new UiCustomizationSettingsDto.fromJson(value);
        case 'UnblockUserInput':
          return new UnblockUserInput.fromJson(value);
        case 'UnlinkUserInput':
          return new UnlinkUserInput.fromJson(value);
        case 'UpdateEditionDto':
          return new UpdateEditionDto.fromJson(value);
        case 'UpdateGoogleAuthenticatorKeyOutput':
          return new UpdateGoogleAuthenticatorKeyOutput.fromJson(value);
        case 'UpdateLanguageTextInput':
          return new UpdateLanguageTextInput.fromJson(value);
        case 'UpdateNotificationSettingsInput':
          return new UpdateNotificationSettingsInput.fromJson(value);
        case 'UpdateOrganizationUnitInput':
          return new UpdateOrganizationUnitInput.fromJson(value);
        case 'UpdateProfilePictureByUserInput':
          return new UpdateProfilePictureByUserInput.fromJson(value);
        case 'UpdateProfilePictureInput':
          return new UpdateProfilePictureInput.fromJson(value);
        case 'UpdateTenantFeaturesInput':
          return new UpdateTenantFeaturesInput.fromJson(value);
        case 'GetDetailedEmployeeReportReesultForViewDto':
          return new GetDetailedEmployeeReportReesultForViewDto.fromJson(value);
        case 'UpdateUserPermissionsInput':
          return new UpdateUserPermissionsInput.fromJson(value);
        case 'UpdateUserSignInTokenOutput':
          return new UpdateUserSignInTokenOutput.fromJson(value);
        case 'UserClockInOutDto':
          return new UserClockInOutDto.fromJson(value);
        case 'UserClockInOutOrganizationUnitLookupTableDto':
          return new UserClockInOutOrganizationUnitLookupTableDto.fromJson(value);
        case 'UserClockInOutType':
           return new UserClockInOutType.fromJson(value);
        case 'UserClockInOutUserLookupTableDto':
          return new UserClockInOutUserLookupTableDto.fromJson(value);
        case 'UserClockInOutWorkHourLookupTableDto':
          return new UserClockInOutWorkHourLookupTableDto.fromJson(value);
        case 'UserClockInOutWorkScheduleLookupTableDto':
          return new UserClockInOutWorkScheduleLookupTableDto.fromJson(value);
        case 'UserDelegationDto':
          return new UserDelegationDto.fromJson(value);
        case 'UserDeviceDeviceLookupTableDto':
          return new UserDeviceDeviceLookupTableDto.fromJson(value);
        case 'UserDeviceDto':
          return new UserDeviceDto.fromJson(value);
        case 'UserDeviceUserLookupTableDto':
          return new UserDeviceUserLookupTableDto.fromJson(value);
        case 'UserEditDto':
          return new UserEditDto.fromJson(value);
        case 'UserListDto':
          return new UserListDto.fromJson(value);
        case 'UserListRoleDto':
          return new UserListRoleDto.fromJson(value);
        case 'UserLockOutSettingsEditDto':
          return new UserLockOutSettingsEditDto.fromJson(value);
        case 'UserLoginAttemptDto':
          return new UserLoginAttemptDto.fromJson(value);
        case 'UserLoginInfoDto':
          return new UserLoginInfoDto.fromJson(value);
        case 'UserNotification':
          return new UserNotification.fromJson(value);
        case 'UserNotificationState':
           return new UserNotificationState.fromJson(value);
        case 'UserRoleDto':
          return new UserRoleDto.fromJson(value);
        case 'UserWorkScheduleAbnormalities':
           return new UserWorkScheduleAbnormalities.fromJson(value);
        case 'UserWorkScheduleDto':
          return new UserWorkScheduleDto.fromJson(value);
        case 'UserWorkScheduleUserLookupTableDto':
          return new UserWorkScheduleUserLookupTableDto.fromJson(value);
        case 'UserWorkScheduleWorkScheduleLookupTableDto':
          return new UserWorkScheduleWorkScheduleLookupTableDto.fromJson(value);
        case 'UsersToCategoryInput':
          return new UsersToCategoryInput.fromJson(value);
        case 'UsersToOrganizationUnitInput':
          return new UsersToOrganizationUnitInput.fromJson(value);
        case 'VacationTypeDto':
          return new VacationTypeDto.fromJson(value);
        case 'VerifySmsCodeInputDto':
          return new VerifySmsCodeInputDto.fromJson(value);
        case 'WebhookEvent':
          return new WebhookEvent.fromJson(value);
        case 'WebhookSubscription':
          return new WebhookSubscription.fromJson(value);
        case 'WeekDays':
           return new WeekDays.fromJson(value);
        case 'Widget':
          return new Widget.fromJson(value);
        case 'WidgetFilterOutput':
          return new WidgetFilterOutput.fromJson(value);
        case 'WidgetOutput':
          return new WidgetOutput.fromJson(value);
        case 'WorkHourDto':
          return new WorkHourDto.fromJson(value);
        case 'WorkModelType':
           return new WorkModelType.fromJson(value);
        case 'WorkScheduleDto':
          return new WorkScheduleDto.fromJson(value);
        case 'WsFederationExternalLoginProviderSettings':
          return new WsFederationExternalLoginProviderSettings.fromJson(value);
        default:
          {
            Match? match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType!)) != null) {
              var newTargetType = match![1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType!)) != null) {
              var newTargetType = match![1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', Exception(), stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object? obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response?> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object? body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams as List<QueryParam>, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          print("body for $url with header: $headerParams is ->");
          print(msgBody);
          return client.post(Uri.parse(url), headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(Uri.parse(url), headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(Uri.parse(url), headers: headerParams);
        case "PATCH":
          return client.patch(Uri.parse(url), headers: headerParams, body: msgBody);
        default:
          return client.get(Uri.parse(url), headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication? auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
