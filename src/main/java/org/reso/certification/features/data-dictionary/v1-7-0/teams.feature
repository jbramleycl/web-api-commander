# This file was autogenerated on: 20200419130430489
Feature: Teams

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an authorization_code or client_credentials for authentication
    And metadata were retrieved from the server
    And metadata are valid

  @ModificationTimestamp
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OriginalEntryTimestamp
  Scenario: OriginalEntryTimestamp
    Given "OriginalEntryTimestamp" exists in the metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type
    And "OriginalEntryTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @OriginatingSystemID
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemKey
  Scenario: OriginatingSystemKey
    Given "OriginatingSystemKey" exists in the metadata
    Then "OriginatingSystemKey" MUST be "String" data type
    And "OriginatingSystemKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemName
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SocialMediaType
  Scenario: SocialMediaType
    Given "SocialMediaType" exists in the metadata
    And "SocialMediaType" enum values exist in the metadata
    And "SocialMediaType" enum types MUST have exactly one member
    Then "SocialMediaType" MUST be "String" data type
    And "SocialMediaType" MUST only contain enum values found in the metadata
    And "SocialMediaType" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SocialMedia[Type]UrlOrId
  Scenario: SocialMedia[Type]UrlOrId
    Given "SocialMedia[Type]UrlOrId" exists in the metadata
    Then "SocialMedia[Type]UrlOrId" MUST be "String" data type
    And "SocialMedia[Type]UrlOrId" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @SourceSystemID
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemKey
  Scenario: SourceSystemKey
    Given "SourceSystemKey" exists in the metadata
    Then "SourceSystemKey" MUST be "String" data type
    And "SourceSystemKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemName
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @TeamAddress1
  Scenario: TeamAddress1
    Given "TeamAddress1" exists in the metadata
    Then "TeamAddress1" MUST be "String" data type
    And "TeamAddress1" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamAddress2
  Scenario: TeamAddress2
    Given "TeamAddress2" exists in the metadata
    Then "TeamAddress2" MUST be "String" data type
    And "TeamAddress2" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamCarrierRoute
  Scenario: TeamCarrierRoute
    Given "TeamCarrierRoute" exists in the metadata
    Then "TeamCarrierRoute" MUST be "String" data type
    And "TeamCarrierRoute" length SHOULD be less than or equal to the RESO Suggested Max Length of 9

  @TeamCity
  Scenario: TeamCity
    Given "TeamCity" exists in the metadata
    Then "TeamCity" MUST be "String" data type
    And "TeamCity" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamCountry
  Scenario: TeamCountry
    Given "TeamCountry" exists in the metadata
    And "TeamCountry" enum values exist in the metadata
    And "TeamCountry" enum types MUST have exactly one member
    Then "TeamCountry" MUST be "String" data type
    And "TeamCountry" MUST only contain enum values found in the metadata
    And "TeamCountry" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @TeamCountyOrParish
  Scenario: TeamCountyOrParish
    Given "TeamCountyOrParish" exists in the metadata
    And "TeamCountyOrParish" enum values exist in the metadata
    And "TeamCountyOrParish" enum types MUST have exactly one member
    Then "TeamCountyOrParish" MUST be "String" data type
    And "TeamCountyOrParish" MUST only contain enum values found in the metadata
    And "TeamCountyOrParish" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamDescription
  Scenario: TeamDescription
    Given "TeamDescription" exists in the metadata
    Then "TeamDescription" MUST be "String" data type
    And "TeamDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 1024

  @TeamDirectPhone
  Scenario: TeamDirectPhone
    Given "TeamDirectPhone" exists in the metadata
    Then "TeamDirectPhone" MUST be "String" data type
    And "TeamDirectPhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamEmail
  Scenario: TeamEmail
    Given "TeamEmail" exists in the metadata
    Then "TeamEmail" MUST be "String" data type
    And "TeamEmail" length SHOULD be less than or equal to the RESO Suggested Max Length of 80

  @TeamFax
  Scenario: TeamFax
    Given "TeamFax" exists in the metadata
    Then "TeamFax" MUST be "String" data type
    And "TeamFax" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamKey
  Scenario: TeamKey
    Given "TeamKey" exists in the metadata
    Then "TeamKey" MUST be "String" data type
    And "TeamKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @TeamKeyNumeric
  Scenario: TeamKeyNumeric
    Given "TeamKeyNumeric" exists in the metadata
    Then "TeamKeyNumeric" MUST be "Integer" data type

  @TeamLeadKey
  Scenario: TeamLeadKey
    Given "TeamLeadKey" exists in the metadata
    Then "TeamLeadKey" MUST be "String" data type
    And "TeamLeadKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @TeamLeadKeyNumeric
  Scenario: TeamLeadKeyNumeric
    Given "TeamLeadKeyNumeric" exists in the metadata
    Then "TeamLeadKeyNumeric" MUST be "Integer" data type

  @TeamLeadLoginId
  Scenario: TeamLeadLoginId
    Given "TeamLeadLoginId" exists in the metadata
    Then "TeamLeadLoginId" MUST be "String" data type
    And "TeamLeadLoginId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @TeamLeadMlsId
  Scenario: TeamLeadMlsId
    Given "TeamLeadMlsId" exists in the metadata
    Then "TeamLeadMlsId" MUST be "String" data type
    And "TeamLeadMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @TeamLeadNationalAssociationId
  Scenario: TeamLeadNationalAssociationId
    Given "TeamLeadNationalAssociationId" exists in the metadata
    Then "TeamLeadNationalAssociationId" MUST be "String" data type
    And "TeamLeadNationalAssociationId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @TeamLeadStateLicense
  Scenario: TeamLeadStateLicense
    Given "TeamLeadStateLicense" exists in the metadata
    Then "TeamLeadStateLicense" MUST be "String" data type
    And "TeamLeadStateLicense" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamLeadStateLicenseState
  Scenario: TeamLeadStateLicenseState
    Given "TeamLeadStateLicenseState" exists in the metadata
    And "TeamLeadStateLicenseState" enum values exist in the metadata
    And "TeamLeadStateLicenseState" enum types MUST have exactly one member
    Then "TeamLeadStateLicenseState" MUST be "String" data type
    And "TeamLeadStateLicenseState" MUST only contain enum values found in the metadata
    And "TeamLeadStateLicenseState" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @TeamMobilePhone
  Scenario: TeamMobilePhone
    Given "TeamMobilePhone" exists in the metadata
    Then "TeamMobilePhone" MUST be "String" data type
    And "TeamMobilePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamName
  Scenario: TeamName
    Given "TeamName" exists in the metadata
    Then "TeamName" MUST be "String" data type
    And "TeamName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamOfficePhone
  Scenario: TeamOfficePhone
    Given "TeamOfficePhone" exists in the metadata
    Then "TeamOfficePhone" MUST be "String" data type
    And "TeamOfficePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamOfficePhoneExt
  Scenario: TeamOfficePhoneExt
    Given "TeamOfficePhoneExt" exists in the metadata
    Then "TeamOfficePhoneExt" MUST be "String" data type
    And "TeamOfficePhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @TeamPostalCode
  Scenario: TeamPostalCode
    Given "TeamPostalCode" exists in the metadata
    Then "TeamPostalCode" MUST be "String" data type
    And "TeamPostalCode" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @TeamPostalCodePlus4
  Scenario: TeamPostalCodePlus4
    Given "TeamPostalCodePlus4" exists in the metadata
    Then "TeamPostalCodePlus4" MUST be "String" data type
    And "TeamPostalCodePlus4" length SHOULD be less than or equal to the RESO Suggested Max Length of 4

  @TeamPreferredPhone
  Scenario: TeamPreferredPhone
    Given "TeamPreferredPhone" exists in the metadata
    Then "TeamPreferredPhone" MUST be "String" data type
    And "TeamPreferredPhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamPreferredPhoneExt
  Scenario: TeamPreferredPhoneExt
    Given "TeamPreferredPhoneExt" exists in the metadata
    Then "TeamPreferredPhoneExt" MUST be "String" data type
    And "TeamPreferredPhoneExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10

  @TeamStateOrProvince
  Scenario: TeamStateOrProvince
    Given "TeamStateOrProvince" exists in the metadata
    And "TeamStateOrProvince" enum values exist in the metadata
    And "TeamStateOrProvince" enum types MUST have exactly one member
    Then "TeamStateOrProvince" MUST be "String" data type
    And "TeamStateOrProvince" MUST only contain enum values found in the metadata
    And "TeamStateOrProvince" length SHOULD be less than or equal to the RESO Suggested Max Length of 2

  @TeamStatus
  Scenario: TeamStatus
    Given "TeamStatus" exists in the metadata
    And "TeamStatus" enum values exist in the metadata
    And "TeamStatus" enum types MUST have exactly one member
    Then "TeamStatus" MUST be "String" data type
    And "TeamStatus" MUST only contain enum values found in the metadata
    And "TeamStatus" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @TeamTollFreePhone
  Scenario: TeamTollFreePhone
    Given "TeamTollFreePhone" exists in the metadata
    Then "TeamTollFreePhone" MUST be "String" data type
    And "TeamTollFreePhone" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamVoiceMail
  Scenario: TeamVoiceMail
    Given "TeamVoiceMail" exists in the metadata
    Then "TeamVoiceMail" MUST be "String" data type
    And "TeamVoiceMail" length SHOULD be less than or equal to the RESO Suggested Max Length of 16

  @TeamVoiceMailExt
  Scenario: TeamVoiceMailExt
    Given "TeamVoiceMailExt" exists in the metadata
    Then "TeamVoiceMailExt" MUST be "String" data type
    And "TeamVoiceMailExt" length SHOULD be less than or equal to the RESO Suggested Max Length of 10
