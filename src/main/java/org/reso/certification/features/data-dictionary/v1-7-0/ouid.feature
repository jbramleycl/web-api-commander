# This file was autogenerated on: 20200415150423335
Feature: OUID

  @ChangedByMemberID
  Scenario: ChangedByMemberID
    Given "ChangedByMemberID" exists in the metadata
    Then "ChangedByMemberID" MUST be "String" data type
    And "ChangedByMemberID" length should be less than or equal to the RESO Suggested Max Length of 25

  @ChangedByMemberKey
  Scenario: ChangedByMemberKey
    Given "ChangedByMemberKey" exists in the metadata
    Then "ChangedByMemberKey" MUST be "String" data type
    And "ChangedByMemberKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @ChangedByMemberKeyNumeric
  Scenario: ChangedByMemberKeyNumeric
    Given "ChangedByMemberKeyNumeric" exists in the metadata
    Then "ChangedByMemberKeyNumeric" MUST be "Integer" data type

  @ModificationTimestamp
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @OrganizationAOR
  Scenario: OrganizationAOR
    Given "OrganizationAOR" exists in the metadata
    And "OrganizationAOR" enum values exist in the metadata
    And "OrganizationAOR" enum types MUST have at least one member
    Then "OrganizationAOR" MUST be "String" data type
    And "OrganizationAOR" should only contain enum values found in the metadata
    And "OrganizationAOR" enumerations must match  MUST have annotations if they contain special characters
    And "OrganizationAOR" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationAddress1
  Scenario: OrganizationAddress1
    Given "OrganizationAddress1" exists in the metadata
    Then "OrganizationAddress1" MUST be "String" data type
    And "OrganizationAddress1" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationAddress2
  Scenario: OrganizationAddress2
    Given "OrganizationAddress2" exists in the metadata
    Then "OrganizationAddress2" MUST be "String" data type
    And "OrganizationAddress2" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationAorOuid
  Scenario: OrganizationAorOuid
    Given "OrganizationAorOuid" exists in the metadata
    Then "OrganizationAorOuid" MUST be "String" data type
    And "OrganizationAorOuid" length should be less than or equal to the RESO Suggested Max Length of 25

  @OrganizationAorOuidKey
  Scenario: OrganizationAorOuidKey
    Given "OrganizationAorOuidKey" exists in the metadata
    Then "OrganizationAorOuidKey" MUST be "String" data type
    And "OrganizationAorOuidKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @OrganizationAorOuidKeyNumeric
  Scenario: OrganizationAorOuidKeyNumeric
    Given "OrganizationAorOuidKeyNumeric" exists in the metadata
    Then "OrganizationAorOuidKeyNumeric" MUST be "Integer" data type

  @OrganizationCarrierRoute
  Scenario: OrganizationCarrierRoute
    Given "OrganizationCarrierRoute" exists in the metadata
    Then "OrganizationCarrierRoute" MUST be "String" data type
    And "OrganizationCarrierRoute" length should be less than or equal to the RESO Suggested Max Length of 9

  @OrganizationCity
  Scenario: OrganizationCity
    Given "OrganizationCity" exists in the metadata
    Then "OrganizationCity" MUST be "String" data type
    And "OrganizationCity" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationComments
  Scenario: OrganizationComments
    Given "OrganizationComments" exists in the metadata
    Then "OrganizationComments" MUST be "String" data type
    And "OrganizationComments" length should be less than or equal to the RESO Suggested Max Length of 500

  @OrganizationContactEmail
  Scenario: OrganizationContactEmail
    Given "OrganizationContactEmail" exists in the metadata
    Then "OrganizationContactEmail" MUST be "String" data type
    And "OrganizationContactEmail" length should be less than or equal to the RESO Suggested Max Length of 80

  @OrganizationContactFax
  Scenario: OrganizationContactFax
    Given "OrganizationContactFax" exists in the metadata
    Then "OrganizationContactFax" MUST be "String" data type
    And "OrganizationContactFax" length should be less than or equal to the RESO Suggested Max Length of 16

  @OrganizationContactFirstName
  Scenario: OrganizationContactFirstName
    Given "OrganizationContactFirstName" exists in the metadata
    Then "OrganizationContactFirstName" MUST be "String" data type
    And "OrganizationContactFirstName" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationContactFullName
  Scenario: OrganizationContactFullName
    Given "OrganizationContactFullName" exists in the metadata
    Then "OrganizationContactFullName" MUST be "String" data type
    And "OrganizationContactFullName" length should be less than or equal to the RESO Suggested Max Length of 150

  @OrganizationContactJobTitle
  Scenario: OrganizationContactJobTitle
    Given "OrganizationContactJobTitle" exists in the metadata
    Then "OrganizationContactJobTitle" MUST be "String" data type
    And "OrganizationContactJobTitle" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationContactLastName
  Scenario: OrganizationContactLastName
    Given "OrganizationContactLastName" exists in the metadata
    Then "OrganizationContactLastName" MUST be "String" data type
    And "OrganizationContactLastName" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationContactMiddleName
  Scenario: OrganizationContactMiddleName
    Given "OrganizationContactMiddleName" exists in the metadata
    Then "OrganizationContactMiddleName" MUST be "String" data type
    And "OrganizationContactMiddleName" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationContactNamePrefix
  Scenario: OrganizationContactNamePrefix
    Given "OrganizationContactNamePrefix" exists in the metadata
    Then "OrganizationContactNamePrefix" MUST be "String" data type
    And "OrganizationContactNamePrefix" length should be less than or equal to the RESO Suggested Max Length of 10

  @OrganizationContactNameSuffix
  Scenario: OrganizationContactNameSuffix
    Given "OrganizationContactNameSuffix" exists in the metadata
    Then "OrganizationContactNameSuffix" MUST be "String" data type
    And "OrganizationContactNameSuffix" length should be less than or equal to the RESO Suggested Max Length of 10

  @OrganizationContactPhone
  Scenario: OrganizationContactPhone
    Given "OrganizationContactPhone" exists in the metadata
    Then "OrganizationContactPhone" MUST be "String" data type
    And "OrganizationContactPhone" length should be less than or equal to the RESO Suggested Max Length of 16

  @OrganizationContactPhoneExt
  Scenario: OrganizationContactPhoneExt
    Given "OrganizationContactPhoneExt" exists in the metadata
    Then "OrganizationContactPhoneExt" MUST be "String" data type
    And "OrganizationContactPhoneExt" length should be less than or equal to the RESO Suggested Max Length of 10

  @OrganizationCountry
  Scenario: OrganizationCountry
    Given "OrganizationCountry" exists in the metadata
    And "OrganizationCountry" enum values exist in the metadata
    And "OrganizationCountry" enum types MUST have at least one member
    Then "OrganizationCountry" MUST be "String" data type
    And "OrganizationCountry" should only contain enum values found in the metadata
    And "OrganizationCountry" enumerations must match  MUST have annotations if they contain special characters
    And "OrganizationCountry" length should be less than or equal to the RESO Suggested Max Length of 2

  @OrganizationCountyOrParish
  Scenario: OrganizationCountyOrParish
    Given "OrganizationCountyOrParish" exists in the metadata
    And "OrganizationCountyOrParish" enum values exist in the metadata
    And "OrganizationCountyOrParish" enum types MUST have at least one member
    Then "OrganizationCountyOrParish" MUST be "String" data type
    And "OrganizationCountyOrParish" should only contain enum values found in the metadata
    And "OrganizationCountyOrParish" enumerations must match  MUST have annotations if they contain special characters
    And "OrganizationCountyOrParish" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationMemberCount
  Scenario: OrganizationMemberCount
    Given "OrganizationMemberCount" exists in the metadata
    Then "OrganizationMemberCount" MUST be "Integer" data type

  @OrganizationMlsCode
  Scenario: OrganizationMlsCode
    Given "OrganizationMlsCode" exists in the metadata
    Then "OrganizationMlsCode" MUST be "String" data type
    And "OrganizationMlsCode" length should be less than or equal to the RESO Suggested Max Length of 25

  @OrganizationMlsVendorName
  Scenario: OrganizationMlsVendorName
    Given "OrganizationMlsVendorName" exists in the metadata
    Then "OrganizationMlsVendorName" MUST be "String" data type
    And "OrganizationMlsVendorName" length should be less than or equal to the RESO Suggested Max Length of 255

  @OrganizationMlsVendorOuid
  Scenario: OrganizationMlsVendorOuid
    Given "OrganizationMlsVendorOuid" exists in the metadata
    Then "OrganizationMlsVendorOuid" MUST be "String" data type
    And "OrganizationMlsVendorOuid" length should be less than or equal to the RESO Suggested Max Length of 25

  @OrganizationName
  Scenario: OrganizationName
    Given "OrganizationName" exists in the metadata
    Then "OrganizationName" MUST be "String" data type
    And "OrganizationName" length should be less than or equal to the RESO Suggested Max Length of 255

  @OrganizationNationalAssociationId
  Scenario: OrganizationNationalAssociationId
    Given "OrganizationNationalAssociationId" exists in the metadata
    Then "OrganizationNationalAssociationId" MUST be "String" data type
    And "OrganizationNationalAssociationId" length should be less than or equal to the RESO Suggested Max Length of 25

  @OrganizationPostalCode
  Scenario: OrganizationPostalCode
    Given "OrganizationPostalCode" exists in the metadata
    Then "OrganizationPostalCode" MUST be "String" data type
    And "OrganizationPostalCode" length should be less than or equal to the RESO Suggested Max Length of 10

  @OrganizationPostalCodePlus4
  Scenario: OrganizationPostalCodePlus4
    Given "OrganizationPostalCodePlus4" exists in the metadata
    Then "OrganizationPostalCodePlus4" MUST be "String" data type
    And "OrganizationPostalCodePlus4" length should be less than or equal to the RESO Suggested Max Length of 4

  @OrganizationSocialMediaType
  Scenario: OrganizationSocialMediaType
    Given "OrganizationSocialMediaType" exists in the metadata
    And "OrganizationSocialMediaType" enum values exist in the metadata
    And "OrganizationSocialMediaType" enum types MUST have at least one member
    Then "OrganizationSocialMediaType" MUST be "String" data type
    And "OrganizationSocialMediaType" should only contain enum values found in the metadata
    And "OrganizationSocialMediaType" enumerations must match  MUST have annotations if they contain special characters
    And "OrganizationSocialMediaType" length should be less than or equal to the RESO Suggested Max Length of 25

  @OrganizationSocialMedia[Type]UrlOrId
  Scenario: OrganizationSocialMedia[Type]UrlOrId
    Given "OrganizationSocialMedia[Type]UrlOrId" exists in the metadata
    Then "OrganizationSocialMedia[Type]UrlOrId" MUST be "String" data type
    And "OrganizationSocialMedia[Type]UrlOrId" length should be less than or equal to the RESO Suggested Max Length of 8000

  @OrganizationStateLicense
  Scenario: OrganizationStateLicense
    Given "OrganizationStateLicense" exists in the metadata
    Then "OrganizationStateLicense" MUST be "String" data type
    And "OrganizationStateLicense" length should be less than or equal to the RESO Suggested Max Length of 50

  @OrganizationStateLicenseState
  Scenario: OrganizationStateLicenseState
    Given "OrganizationStateLicenseState" exists in the metadata
    And "OrganizationStateLicenseState" enum values exist in the metadata
    And "OrganizationStateLicenseState" enum types MUST have at least one member
    Then "OrganizationStateLicenseState" MUST be "String" data type
    And "OrganizationStateLicenseState" should only contain enum values found in the metadata
    And "OrganizationStateLicenseState" enumerations must match  MUST have annotations if they contain special characters
    And "OrganizationStateLicenseState" length should be less than or equal to the RESO Suggested Max Length of 2

  @OrganizationStateOrProvince
  Scenario: OrganizationStateOrProvince
    Given "OrganizationStateOrProvince" exists in the metadata
    And "OrganizationStateOrProvince" enum values exist in the metadata
    And "OrganizationStateOrProvince" enum types MUST have at least one member
    Then "OrganizationStateOrProvince" MUST be "String" data type
    And "OrganizationStateOrProvince" should only contain enum values found in the metadata
    And "OrganizationStateOrProvince" enumerations must match  MUST have annotations if they contain special characters
    And "OrganizationStateOrProvince" length should be less than or equal to the RESO Suggested Max Length of 2

  @OrganizationStatus
  Scenario: OrganizationStatus
    Given "OrganizationStatus" exists in the metadata
    Then "OrganizationStatus" MUST be "Boolean" data type

  @OrganizationStatusChangeTimestamp
  Scenario: OrganizationStatusChangeTimestamp
    Given "OrganizationStatusChangeTimestamp" exists in the metadata
    Then "OrganizationStatusChangeTimestamp" MUST be "Timestamp" data type
    And "OrganizationStatusChangeTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @OrganizationType
  Scenario: OrganizationType
    Given "OrganizationType" exists in the metadata
    And "OrganizationType" enum values exist in the metadata
    And "OrganizationType" enum types MUST have at least one member
    Then "OrganizationType" MUST be "String" data type
    And "OrganizationType" should only contain enum values found in the metadata
    And "OrganizationType" enumerations must match  MUST have annotations if they contain special characters
    And "OrganizationType" length should be less than or equal to the RESO Suggested Max Length of 25

  @OrganizationUniqueId
  Scenario: OrganizationUniqueId
    Given "OrganizationUniqueId" exists in the metadata
    Then "OrganizationUniqueId" MUST be "String" data type
    And "OrganizationUniqueId" length should be less than or equal to the RESO Suggested Max Length of 25

  @OrganizationUniqueIdKey
  Scenario: OrganizationUniqueIdKey
    Given "OrganizationUniqueIdKey" exists in the metadata
    Then "OrganizationUniqueIdKey" MUST be "String" data type
    And "OrganizationUniqueIdKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @OrganizationUniqueIdKeyNumeric
  Scenario: OrganizationUniqueIdKeyNumeric
    Given "OrganizationUniqueIdKeyNumeric" exists in the metadata
    Then "OrganizationUniqueIdKeyNumeric" MUST be "Integer" data type

  @OriginalEntryTimestamp
  Scenario: OriginalEntryTimestamp
    Given "OriginalEntryTimestamp" exists in the metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type
    And "OriginalEntryTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27
