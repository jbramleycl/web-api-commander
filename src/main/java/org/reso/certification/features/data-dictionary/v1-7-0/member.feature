# This file was autogenerated on: 20200510110537413
Feature: Member

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @JobTitle @Member
  Scenario: JobTitle
    Given "JobTitle" exists in the metadata
    Then "JobTitle" MUST be "String" data type
    And "JobTitle" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @LastLoginTimestamp @Member
  Scenario: LastLoginTimestamp
    Given "LastLoginTimestamp" exists in the metadata
    Then "LastLoginTimestamp" MUST be "Timestamp" data type
    And "LastLoginTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @MemberAOR @Member
  Scenario: MemberAOR
    Given "MemberAOR" exists in the metadata
    And "MemberAOR" enum values exist in the metadata
    And "MemberAOR" enum types MUST have exactly one member
    Then "MemberAOR" MUST be "String" data type
    And "MemberAOR" MUST only contain enum values found in the metadata
    And "MemberAOR" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberAORMlsId @Member
  Scenario: MemberAORMlsId
    Given "MemberAORMlsId" exists in the metadata
    Then "MemberAORMlsId" MUST be "String" data type
    And "MemberAORMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberAORkey @Member
  Scenario: MemberAORkey
    Given "MemberAORkey" exists in the metadata
    Then "MemberAORkey" MUST be "String" data type
    And "MemberAORkey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MemberAORkeyNumeric @Member
  Scenario: MemberAORkeyNumeric
    Given "MemberAORkeyNumeric" exists in the metadata
    Then "MemberAORkeyNumeric" MUST be "Integer" data type

  @MemberAddress1 @Member
  Scenario: MemberAddress1
    Given "MemberAddress1" exists in the metadata
    Then "MemberAddress1" MUST be "String" data type
    And "MemberAddress1" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberAddress2 @Member
  Scenario: MemberAddress2
    Given "MemberAddress2" exists in the metadata
    Then "MemberAddress2" MUST be "String" data type
    And "MemberAddress2" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberAssociationComments @Member
  Scenario: MemberAssociationComments
    Given "MemberAssociationComments" exists in the metadata
    Then "MemberAssociationComments" MUST be "String" data type
    And "MemberAssociationComments" length SHOULD be less than or equal to the RESO Suggested Max Length of 500

  @MemberCarrierRoute @Member
  Scenario: MemberCarrierRoute
    Given "MemberCarrierRoute" exists in the metadata
    Then "MemberCarrierRoute" MUST be "String" data type
    And "MemberCarrierRoute" length SHOULD be less than or equal to the RESO Suggested Max Length of 9

  @MemberCity @Member
  Scenario: MemberCity
    Given "MemberCity" exists in the metadata
    Then "MemberCity" MUST be "String" data type
    And "MemberCity" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberCountry @Member
  Scenario: MemberCountry
    Given "MemberCountry" exists in the metadata
    And "MemberCountry" enum values exist in the metadata
    And "MemberCountry" enum types MUST have exactly one member
    Then "MemberCountry" MUST be "String" data type
    And "MemberCountry" MUST only contain enum values found in the metadata
    And "MemberCountry" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @MemberCountyOrParish @Member
  Scenario: MemberCountyOrParish
    Given "MemberCountyOrParish" exists in the metadata
    And "MemberCountyOrParish" enum values exist in the metadata
    And "MemberCountyOrParish" enum types MUST have exactly one member
    Then "MemberCountyOrParish" MUST be "String" data type
    And "MemberCountyOrParish" MUST only contain enum values found in the metadata
    And "MemberCountyOrParish" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberDesignation @Member
  Scenario: MemberDesignation
    Given "MemberDesignation" exists in the metadata
    And "MemberDesignation" enum values exist in the metadata
    And "MemberDesignation" enum types MUST have at least one member
    Then "MemberDesignation" MUST be "String Array" data type
    And "MemberDesignation" SHOULD have no more than the RESO Suggested Max Length of 50 item(s)

  @MemberDirectPhone @Member
  Scenario: MemberDirectPhone
    Given "MemberDirectPhone" exists in the metadata
    Then "MemberDirectPhone" MUST be "String" data type
    And "MemberDirectPhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberEmail @Member
  Scenario: MemberEmail
    Given "MemberEmail" exists in the metadata
    Then "MemberEmail" MUST be "String" data type
    And "MemberEmail" length SHOULD be less than or equal to the RESO Suggested Max Length of 80

  @MemberFax @Member
  Scenario: MemberFax
    Given "MemberFax" exists in the metadata
    Then "MemberFax" MUST be "String" data type
    And "MemberFax" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberFirstName @Member
  Scenario: MemberFirstName
    Given "MemberFirstName" exists in the metadata
    Then "MemberFirstName" MUST be "String" data type
    And "MemberFirstName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberFullName @Member
  Scenario: MemberFullName
    Given "MemberFullName" exists in the metadata
    Then "MemberFullName" MUST be "String" data type
    And "MemberFullName" length SHOULD be less than or equal to the RESO Suggested Max Length of 150

  @MemberHomePhone @Member
  Scenario: MemberHomePhone
    Given "MemberHomePhone" exists in the metadata
    Then "MemberHomePhone" MUST be "String" data type
    And "MemberHomePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberIsAssistantTo @Member
  Scenario: MemberIsAssistantTo
    Given "MemberIsAssistantTo" exists in the metadata
    Then "MemberIsAssistantTo" MUST be "String" data type
    And "MemberIsAssistantTo" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberKey @Member
  Scenario: MemberKey
    Given "MemberKey" exists in the metadata
    Then "MemberKey" MUST be "String" data type
    And "MemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MemberKeyNumeric @Member
  Scenario: MemberKeyNumeric
    Given "MemberKeyNumeric" exists in the metadata
    Then "MemberKeyNumeric" MUST be "Integer" data type

  @MemberLanguages @Member
  Scenario: MemberLanguages
    Given "MemberLanguages" exists in the metadata
    And "MemberLanguages" enum values exist in the metadata
    And "MemberLanguages" enum types MUST have at least one member
    Then "MemberLanguages" MUST be "String Array" data type
    And "MemberLanguages" SHOULD have no more than the RESO Suggested Max Length of 1024 item(s)

  @MemberLastName @Member
  Scenario: MemberLastName
    Given "MemberLastName" exists in the metadata
    Then "MemberLastName" MUST be "String" data type
    And "MemberLastName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberLoginId @Member
  Scenario: MemberLoginId
    Given "MemberLoginId" exists in the metadata
    Then "MemberLoginId" MUST be "String" data type
    And "MemberLoginId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberMiddleName @Member
  Scenario: MemberMiddleName
    Given "MemberMiddleName" exists in the metadata
    Then "MemberMiddleName" MUST be "String" data type
    And "MemberMiddleName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberMlsAccessYN @Member
  Scenario: MemberMlsAccessYN
    Given "MemberMlsAccessYN" exists in the metadata
    And "MemberMlsAccessYN" is not a synonym for another field
    Then "MemberMlsAccessYN" MUST be "Boolean" data type

  @MemberMlsId @Member
  Scenario: MemberMlsId
    Given "MemberMlsId" exists in the metadata
    Then "MemberMlsId" MUST be "String" data type
    And "MemberMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberMlsSecurityClass @Member
  Scenario: MemberMlsSecurityClass
    Given "MemberMlsSecurityClass" exists in the metadata
    And "MemberMlsSecurityClass" enum values exist in the metadata
    And "MemberMlsSecurityClass" enum types MUST have exactly one member
    Then "MemberMlsSecurityClass" MUST be "String" data type
    And "MemberMlsSecurityClass" MUST only contain enum values found in the metadata
    And "MemberMlsSecurityClass" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberMobilePhone @Member
  Scenario: MemberMobilePhone
    Given "MemberMobilePhone" exists in the metadata
    Then "MemberMobilePhone" MUST be "String" data type
    And "MemberMobilePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberNamePrefix @Member
  Scenario: MemberNamePrefix
    Given "MemberNamePrefix" exists in the metadata
    Then "MemberNamePrefix" MUST be "String" data type
    And "MemberNamePrefix" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberNameSuffix @Member
  Scenario: MemberNameSuffix
    Given "MemberNameSuffix" exists in the metadata
    Then "MemberNameSuffix" MUST be "String" data type
    And "MemberNameSuffix" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberNationalAssociationId @Member
  Scenario: MemberNationalAssociationId
    Given "MemberNationalAssociationId" exists in the metadata
    Then "MemberNationalAssociationId" MUST be "String" data type
    And "MemberNationalAssociationId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberNickname @Member
  Scenario: MemberNickname
    Given "MemberNickname" exists in the metadata
    Then "MemberNickname" MUST be "String" data type
    And "MemberNickname" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberOfficePhone @Member
  Scenario: MemberOfficePhone
    Given "MemberOfficePhone" exists in the metadata
    Then "MemberOfficePhone" MUST be "String" data type
    And "MemberOfficePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberOfficePhoneExt @Member
  Scenario: MemberOfficePhoneExt
    Given "MemberOfficePhoneExt" exists in the metadata
    Then "MemberOfficePhoneExt" MUST be "String" data type
    And "MemberOfficePhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberOtherPhoneType @Member
  Scenario: MemberOtherPhoneType
    Given "MemberOtherPhoneType" exists in the metadata
    And "MemberOtherPhoneType" enum values exist in the metadata
    And "MemberOtherPhoneType" enum types MUST have exactly one member
    Then "MemberOtherPhoneType" MUST be "String" data type
    And "MemberOtherPhoneType" MUST only contain enum values found in the metadata
    And "MemberOtherPhoneType" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberOtherPhone_TYPE_PLACEHOLDER_Ext @Member
  Scenario: MemberOtherPhone_TYPE_PLACEHOLDER_Ext
    Given "MemberOtherPhone_TYPE_PLACEHOLDER_Ext" exists in the metadata
    Then "MemberOtherPhone_TYPE_PLACEHOLDER_Ext" MUST be "String" data type
    And "MemberOtherPhone_TYPE_PLACEHOLDER_Ext" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberOtherPhone_TYPE_PLACEHOLDER_Number @Member
  Scenario: MemberOtherPhone_TYPE_PLACEHOLDER_Number
    Given "MemberOtherPhone_TYPE_PLACEHOLDER_Number" exists in the metadata
    Then "MemberOtherPhone_TYPE_PLACEHOLDER_Number" MUST be "String" data type
    And "MemberOtherPhone_TYPE_PLACEHOLDER_Number" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberPager @Member
  Scenario: MemberPager
    Given "MemberPager" exists in the metadata
    Then "MemberPager" MUST be "String" data type
    And "MemberPager" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberPassword @Member
  Scenario: MemberPassword
    Given "MemberPassword" exists in the metadata
    Then "MemberPassword" MUST be "String" data type
    And "MemberPassword" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberPhoneTTYTDD @Member
  Scenario: MemberPhoneTTYTDD
    Given "MemberPhoneTTYTDD" exists in the metadata
    Then "MemberPhoneTTYTDD" MUST be "String" data type
    And "MemberPhoneTTYTDD" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberPostalCode @Member
  Scenario: MemberPostalCode
    Given "MemberPostalCode" exists in the metadata
    Then "MemberPostalCode" MUST be "String" data type
    And "MemberPostalCode" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberPostalCodePlus4 @Member
  Scenario: MemberPostalCodePlus4
    Given "MemberPostalCodePlus4" exists in the metadata
    Then "MemberPostalCodePlus4" MUST be "String" data type
    And "MemberPostalCodePlus4" length SHOULD be less than or equal to the RESO Suggested Max Length of 4

  @MemberPreferredPhone @Member
  Scenario: MemberPreferredPhone
    Given "MemberPreferredPhone" exists in the metadata
    Then "MemberPreferredPhone" MUST be "String" data type
    And "MemberPreferredPhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberPreferredPhoneExt @Member
  Scenario: MemberPreferredPhoneExt
    Given "MemberPreferredPhoneExt" exists in the metadata
    Then "MemberPreferredPhoneExt" MUST be "String" data type
    And "MemberPreferredPhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberStateLicense @Member
  Scenario: MemberStateLicense
    Given "MemberStateLicense" exists in the metadata
    Then "MemberStateLicense" MUST be "String" data type
    And "MemberStateLicense" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberStateLicenseState @Member
  Scenario: MemberStateLicenseState
    Given "MemberStateLicenseState" exists in the metadata
    And "MemberStateLicenseState" enum values exist in the metadata
    And "MemberStateLicenseState" enum types MUST have exactly one member
    Then "MemberStateLicenseState" MUST be "String" data type
    And "MemberStateLicenseState" MUST only contain enum values found in the metadata
    And "MemberStateLicenseState" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @MemberStateOrProvince @Member
  Scenario: MemberStateOrProvince
    Given "MemberStateOrProvince" exists in the metadata
    And "MemberStateOrProvince" enum values exist in the metadata
    And "MemberStateOrProvince" enum types MUST have exactly one member
    Then "MemberStateOrProvince" MUST be "String" data type
    And "MemberStateOrProvince" MUST only contain enum values found in the metadata
    And "MemberStateOrProvince" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @MemberStatus @Member
  Scenario: MemberStatus
    Given "MemberStatus" exists in the metadata
    And "MemberStatus" enum values exist in the metadata
    And "MemberStatus" enum types MUST have exactly one member
    Then "MemberStatus" MUST be "String" data type
    And "MemberStatus" MUST only contain enum values found in the metadata
    And "MemberStatus" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberTollFreePhone @Member
  Scenario: MemberTollFreePhone
    Given "MemberTollFreePhone" exists in the metadata
    Then "MemberTollFreePhone" MUST be "String" data type
    And "MemberTollFreePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberType @Member
  Scenario: MemberType
    Given "MemberType" exists in the metadata
    And "MemberType" enum values exist in the metadata
    And "MemberType" enum types MUST have exactly one member
    Then "MemberType" MUST be "String" data type
    And "MemberType" MUST only contain enum values found in the metadata
    And "MemberType" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberVoiceMail @Member
  Scenario: MemberVoiceMail
    Given "MemberVoiceMail" exists in the metadata
    Then "MemberVoiceMail" MUST be "String" data type
    And "MemberVoiceMail" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberVoiceMailExt @Member
  Scenario: MemberVoiceMailExt
    Given "MemberVoiceMailExt" exists in the metadata
    Then "MemberVoiceMailExt" MUST be "String" data type
    And "MemberVoiceMailExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @ModificationTimestamp @Member
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OfficeKey @Member
  Scenario: OfficeKey
    Given "OfficeKey" exists in the metadata
    Then "OfficeKey" MUST be "String" data type
    And "OfficeKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OfficeKeyNumeric @Member
  Scenario: OfficeKeyNumeric
    Given "OfficeKeyNumeric" exists in the metadata
    Then "OfficeKeyNumeric" MUST be "Integer" data type

  @OfficeMlsId @Member
  Scenario: OfficeMlsId
    Given "OfficeMlsId" exists in the metadata
    Then "OfficeMlsId" MUST be "String" data type
    And "OfficeMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OfficeName @Member
  Scenario: OfficeName
    Given "OfficeName" exists in the metadata
    Then "OfficeName" MUST be "String" data type
    And "OfficeName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginalEntryTimestamp @Member
  Scenario: OriginalEntryTimestamp
    Given "OriginalEntryTimestamp" exists in the metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type
    And "OriginalEntryTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OriginatingSystemID @Member
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemMemberKey @Member
  Scenario: OriginatingSystemMemberKey
    Given "OriginatingSystemMemberKey" exists in the metadata
    Then "OriginatingSystemMemberKey" MUST be "String" data type
    And "OriginatingSystemMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemName @Member
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SocialMediaType @Member
  Scenario: SocialMediaType
    Given "SocialMediaType" exists in the metadata
    And "SocialMediaType" enum values exist in the metadata
    And "SocialMediaType" enum types MUST have exactly one member
    Then "SocialMediaType" MUST be "String" data type
    And "SocialMediaType" MUST only contain enum values found in the metadata
    And "SocialMediaType" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SocialMedia_TYPE_PLACEHOLDER_UrlOrId @Member
  Scenario: SocialMedia_TYPE_PLACEHOLDER_UrlOrId
    Given "SocialMedia_TYPE_PLACEHOLDER_UrlOrId" exists in the metadata
    Then "SocialMedia_TYPE_PLACEHOLDER_UrlOrId" MUST be "String" data type
    And "SocialMedia_TYPE_PLACEHOLDER_UrlOrId" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @SourceSystemID @Member
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemMemberKey @Member
  Scenario: SourceSystemMemberKey
    Given "SourceSystemMemberKey" exists in the metadata
    Then "SourceSystemMemberKey" MUST be "String" data type
    And "SourceSystemMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemName @Member
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SyndicateTo @Member
  Scenario: SyndicateTo
    Given "SyndicateTo" exists in the metadata
    And "SyndicateTo" enum values exist in the metadata
    And "SyndicateTo" enum types MUST have at least one member
    Then "SyndicateTo" MUST be "String Array" data type
    And "SyndicateTo" SHOULD have no more than the RESO Suggested Max Length of 1024 item(s)
