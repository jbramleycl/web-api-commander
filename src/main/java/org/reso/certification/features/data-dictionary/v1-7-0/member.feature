# This file was autogenerated on: 20200612130658960
Feature: Member

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @JobTitle @Member
  Scenario: JobTitle
    When "JobTitle" exists in the "Member" metadata
    Then "JobTitle" MUST be "String" data type
    And "JobTitle" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @LastLoginTimestamp @Member
  Scenario: LastLoginTimestamp
    When "LastLoginTimestamp" exists in the "Member" metadata
    Then "LastLoginTimestamp" MUST be "Timestamp" data type

  @MemberAOR @Member
  Scenario: MemberAOR
    When "MemberAOR" exists in the "Member" metadata
    Then "MemberAOR" is defined as a single-valued enumeration
    And "MemberAOR" standard enumeration values exist in the metadata

  @MemberAORMlsId @Member
  Scenario: MemberAORMlsId
    When "MemberAORMlsId" exists in the "Member" metadata
    Then "MemberAORMlsId" MUST be "String" data type
    And "MemberAORMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberAORkey @Member
  Scenario: MemberAORkey
    When "MemberAORkey" exists in the "Member" metadata
    Then "MemberAORkey" MUST be "String" data type
    And "MemberAORkey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MemberAORkeyNumeric @Member
  Scenario: MemberAORkeyNumeric
    When "MemberAORkeyNumeric" exists in the "Member" metadata
    Then "MemberAORkeyNumeric" MUST be "Integer" data type

  @MemberAddress1 @Member
  Scenario: MemberAddress1
    When "MemberAddress1" exists in the "Member" metadata
    Then "MemberAddress1" MUST be "String" data type
    And "MemberAddress1" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberAddress2 @Member
  Scenario: MemberAddress2
    When "MemberAddress2" exists in the "Member" metadata
    Then "MemberAddress2" MUST be "String" data type
    And "MemberAddress2" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberAssociationComments @Member
  Scenario: MemberAssociationComments
    When "MemberAssociationComments" exists in the "Member" metadata
    Then "MemberAssociationComments" MUST be "String" data type
    And "MemberAssociationComments" length SHOULD be less than or equal to the RESO Suggested Max Length of 500

  @MemberCarrierRoute @Member
  Scenario: MemberCarrierRoute
    When "MemberCarrierRoute" exists in the "Member" metadata
    Then "MemberCarrierRoute" MUST be "String" data type
    And "MemberCarrierRoute" length SHOULD be less than or equal to the RESO Suggested Max Length of 9

  @MemberCity @Member
  Scenario: MemberCity
    When "MemberCity" exists in the "Member" metadata
    Then "MemberCity" MUST be "String" data type
    And "MemberCity" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberCountry @Member
  Scenario: MemberCountry
    When "MemberCountry" exists in the "Member" metadata
    Then "MemberCountry" is defined as a single-valued enumeration
    And "MemberCountry" standard enumeration values exist in the metadata

  @MemberCountyOrParish @Member
  Scenario: MemberCountyOrParish
    When "MemberCountyOrParish" exists in the "Member" metadata
    Then "MemberCountyOrParish" is defined as a single-valued enumeration
    And "MemberCountyOrParish" standard enumeration values exist in the metadata

  @MemberDesignation @Member
  Scenario: MemberDesignation
    When "MemberDesignation" exists in the "Member" metadata
    Then "MemberDesignation" is defined as a multi-valued enumeration
    And "MemberDesignation" standard enumeration values exist in the metadata

  @MemberDirectPhone @Member
  Scenario: MemberDirectPhone
    When "MemberDirectPhone" exists in the "Member" metadata
    Then "MemberDirectPhone" MUST be "String" data type
    And "MemberDirectPhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberEmail @Member
  Scenario: MemberEmail
    When "MemberEmail" exists in the "Member" metadata
    Then "MemberEmail" MUST be "String" data type
    And "MemberEmail" length SHOULD be less than or equal to the RESO Suggested Max Length of 80

  @MemberFax @Member
  Scenario: MemberFax
    When "MemberFax" exists in the "Member" metadata
    Then "MemberFax" MUST be "String" data type
    And "MemberFax" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberFirstName @Member
  Scenario: MemberFirstName
    When "MemberFirstName" exists in the "Member" metadata
    Then "MemberFirstName" MUST be "String" data type
    And "MemberFirstName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberFullName @Member
  Scenario: MemberFullName
    When "MemberFullName" exists in the "Member" metadata
    Then "MemberFullName" MUST be "String" data type
    And "MemberFullName" length SHOULD be less than or equal to the RESO Suggested Max Length of 150

  @MemberHomePhone @Member
  Scenario: MemberHomePhone
    When "MemberHomePhone" exists in the "Member" metadata
    Then "MemberHomePhone" MUST be "String" data type
    And "MemberHomePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberIsAssistantTo @Member
  Scenario: MemberIsAssistantTo
    When "MemberIsAssistantTo" exists in the "Member" metadata
    Then "MemberIsAssistantTo" MUST be "String" data type
    And "MemberIsAssistantTo" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberKey @Member
  Scenario: MemberKey
    When "MemberKey" exists in the "Member" metadata
    Then "MemberKey" MUST be "String" data type
    And "MemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MemberKeyNumeric @Member
  Scenario: MemberKeyNumeric
    When "MemberKeyNumeric" exists in the "Member" metadata
    Then "MemberKeyNumeric" MUST be "Integer" data type

  @MemberLanguages @Member
  Scenario: MemberLanguages
    When "MemberLanguages" exists in the "Member" metadata
    Then "MemberLanguages" is defined as a multi-valued enumeration
    And "MemberLanguages" standard enumeration values exist in the metadata

  @MemberLastName @Member
  Scenario: MemberLastName
    When "MemberLastName" exists in the "Member" metadata
    Then "MemberLastName" MUST be "String" data type
    And "MemberLastName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberLoginId @Member
  Scenario: MemberLoginId
    When "MemberLoginId" exists in the "Member" metadata
    Then "MemberLoginId" MUST be "String" data type
    And "MemberLoginId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberMiddleName @Member
  Scenario: MemberMiddleName
    When "MemberMiddleName" exists in the "Member" metadata
    Then "MemberMiddleName" MUST be "String" data type
    And "MemberMiddleName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberMlsAccessYN @Member
  Scenario: MemberMlsAccessYN
    When "MemberMlsAccessYN" exists in the "Member" metadata
    Then "MemberMlsAccessYN" MUST be "Boolean" data type

  @MemberMlsId @Member
  Scenario: MemberMlsId
    When "MemberMlsId" exists in the "Member" metadata
    Then "MemberMlsId" MUST be "String" data type
    And "MemberMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberMlsSecurityClass @Member
  Scenario: MemberMlsSecurityClass
    When "MemberMlsSecurityClass" exists in the "Member" metadata
    Then "MemberMlsSecurityClass" is defined as a single-valued enumeration
    And "MemberMlsSecurityClass" standard enumeration values exist in the metadata

  @MemberMobilePhone @Member
  Scenario: MemberMobilePhone
    When "MemberMobilePhone" exists in the "Member" metadata
    Then "MemberMobilePhone" MUST be "String" data type
    And "MemberMobilePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberNamePrefix @Member
  Scenario: MemberNamePrefix
    When "MemberNamePrefix" exists in the "Member" metadata
    Then "MemberNamePrefix" MUST be "String" data type
    And "MemberNamePrefix" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberNameSuffix @Member
  Scenario: MemberNameSuffix
    When "MemberNameSuffix" exists in the "Member" metadata
    Then "MemberNameSuffix" MUST be "String" data type
    And "MemberNameSuffix" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberNationalAssociationId @Member
  Scenario: MemberNationalAssociationId
    When "MemberNationalAssociationId" exists in the "Member" metadata
    Then "MemberNationalAssociationId" MUST be "String" data type
    And "MemberNationalAssociationId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberNickname @Member
  Scenario: MemberNickname
    When "MemberNickname" exists in the "Member" metadata
    Then "MemberNickname" MUST be "String" data type
    And "MemberNickname" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberOfficePhone @Member
  Scenario: MemberOfficePhone
    When "MemberOfficePhone" exists in the "Member" metadata
    Then "MemberOfficePhone" MUST be "String" data type
    And "MemberOfficePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberOfficePhoneExt @Member
  Scenario: MemberOfficePhoneExt
    When "MemberOfficePhoneExt" exists in the "Member" metadata
    Then "MemberOfficePhoneExt" MUST be "String" data type
    And "MemberOfficePhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberOtherPhoneType @Member
  Scenario: MemberOtherPhoneType
    When "MemberOtherPhoneType" exists in the "Member" metadata
    Then "MemberOtherPhoneType" is defined as a single-valued enumeration
    And "MemberOtherPhoneType" standard enumeration values exist in the metadata

  @MemberPager @Member
  Scenario: MemberPager
    When "MemberPager" exists in the "Member" metadata
    Then "MemberPager" MUST be "String" data type
    And "MemberPager" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberPassword @Member
  Scenario: MemberPassword
    When "MemberPassword" exists in the "Member" metadata
    Then "MemberPassword" MUST be "String" data type
    And "MemberPassword" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberPhoneTTYTDD @Member
  Scenario: MemberPhoneTTYTDD
    When "MemberPhoneTTYTDD" exists in the "Member" metadata
    Then "MemberPhoneTTYTDD" MUST be "String" data type
    And "MemberPhoneTTYTDD" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberPostalCode @Member
  Scenario: MemberPostalCode
    When "MemberPostalCode" exists in the "Member" metadata
    Then "MemberPostalCode" MUST be "String" data type
    And "MemberPostalCode" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberPostalCodePlus4 @Member
  Scenario: MemberPostalCodePlus4
    When "MemberPostalCodePlus4" exists in the "Member" metadata
    Then "MemberPostalCodePlus4" MUST be "String" data type
    And "MemberPostalCodePlus4" length SHOULD be less than or equal to the RESO Suggested Max Length of 4

  @MemberPreferredPhone @Member
  Scenario: MemberPreferredPhone
    When "MemberPreferredPhone" exists in the "Member" metadata
    Then "MemberPreferredPhone" MUST be "String" data type
    And "MemberPreferredPhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberPreferredPhoneExt @Member
  Scenario: MemberPreferredPhoneExt
    When "MemberPreferredPhoneExt" exists in the "Member" metadata
    Then "MemberPreferredPhoneExt" MUST be "String" data type
    And "MemberPreferredPhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @MemberStateLicense @Member
  Scenario: MemberStateLicense
    When "MemberStateLicense" exists in the "Member" metadata
    Then "MemberStateLicense" MUST be "String" data type
    And "MemberStateLicense" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MemberStateLicenseState @Member
  Scenario: MemberStateLicenseState
    When "MemberStateLicenseState" exists in the "Member" metadata
    Then "MemberStateLicenseState" is defined as a single-valued enumeration
    And "MemberStateLicenseState" standard enumeration values exist in the metadata

  @MemberStateOrProvince @Member
  Scenario: MemberStateOrProvince
    When "MemberStateOrProvince" exists in the "Member" metadata
    Then "MemberStateOrProvince" is defined as a single-valued enumeration
    And "MemberStateOrProvince" standard enumeration values exist in the metadata

  @MemberStatus @Member
  Scenario: MemberStatus
    When "MemberStatus" exists in the "Member" metadata
    Then "MemberStatus" is defined as a single-valued enumeration
    And "MemberStatus" standard enumeration values exist in the metadata

  @MemberTollFreePhone @Member
  Scenario: MemberTollFreePhone
    When "MemberTollFreePhone" exists in the "Member" metadata
    Then "MemberTollFreePhone" MUST be "String" data type
    And "MemberTollFreePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberType @Member
  Scenario: MemberType
    When "MemberType" exists in the "Member" metadata
    Then "MemberType" is defined as a single-valued enumeration
    And "MemberType" standard enumeration values exist in the metadata

  @MemberVoiceMail @Member
  Scenario: MemberVoiceMail
    When "MemberVoiceMail" exists in the "Member" metadata
    Then "MemberVoiceMail" MUST be "String" data type
    And "MemberVoiceMail" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @MemberVoiceMailExt @Member
  Scenario: MemberVoiceMailExt
    When "MemberVoiceMailExt" exists in the "Member" metadata
    Then "MemberVoiceMailExt" MUST be "String" data type
    And "MemberVoiceMailExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @ModificationTimestamp @Member
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "Member" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @OfficeKey @Member
  Scenario: OfficeKey
    When "OfficeKey" exists in the "Member" metadata
    Then "OfficeKey" MUST be "String" data type
    And "OfficeKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OfficeKeyNumeric @Member
  Scenario: OfficeKeyNumeric
    When "OfficeKeyNumeric" exists in the "Member" metadata
    Then "OfficeKeyNumeric" MUST be "Integer" data type

  @OfficeMlsId @Member
  Scenario: OfficeMlsId
    When "OfficeMlsId" exists in the "Member" metadata
    Then "OfficeMlsId" MUST be "String" data type
    And "OfficeMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OfficeName @Member
  Scenario: OfficeName
    When "OfficeName" exists in the "Member" metadata
    Then "OfficeName" MUST be "String" data type
    And "OfficeName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginalEntryTimestamp @Member
  Scenario: OriginalEntryTimestamp
    When "OriginalEntryTimestamp" exists in the "Member" metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type

  @OriginatingSystemID @Member
  Scenario: OriginatingSystemID
    When "OriginatingSystemID" exists in the "Member" metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemMemberKey @Member
  Scenario: OriginatingSystemMemberKey
    When "OriginatingSystemMemberKey" exists in the "Member" metadata
    Then "OriginatingSystemMemberKey" MUST be "String" data type
    And "OriginatingSystemMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemName @Member
  Scenario: OriginatingSystemName
    When "OriginatingSystemName" exists in the "Member" metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SocialMediaType @Member
  Scenario: SocialMediaType
    When "SocialMediaType" exists in the "Member" metadata
    Then "SocialMediaType" is defined as a single-valued enumeration
    And "SocialMediaType" standard enumeration values exist in the metadata

  @SourceSystemID @Member
  Scenario: SourceSystemID
    When "SourceSystemID" exists in the "Member" metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemMemberKey @Member
  Scenario: SourceSystemMemberKey
    When "SourceSystemMemberKey" exists in the "Member" metadata
    Then "SourceSystemMemberKey" MUST be "String" data type
    And "SourceSystemMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemName @Member
  Scenario: SourceSystemName
    When "SourceSystemName" exists in the "Member" metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SyndicateTo @Member
  Scenario: SyndicateTo
    When "SyndicateTo" exists in the "Member" metadata
    Then "SyndicateTo" is defined as a multi-valued enumeration
    And "SyndicateTo" standard enumeration values exist in the metadata
