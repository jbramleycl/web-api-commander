# This file was autogenerated on: 20200510110537413
Feature: SocialMedia

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ClassName @SocialMedia
  Scenario: ClassName
    Given "ClassName" exists in the metadata
    And "ClassName" enum values exist in the metadata
    And "ClassName" enum types MUST have exactly one member
    Then "ClassName" MUST be "String" data type
    And "ClassName" MUST only contain enum values found in the metadata
    And "ClassName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ModificationTimestamp @SocialMedia
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @ResourceName @SocialMedia
  Scenario: ResourceName
    Given "ResourceName" exists in the metadata
    And "ResourceName" enum values exist in the metadata
    And "ResourceName" enum types MUST have exactly one member
    Then "ResourceName" MUST be "String" data type
    And "ResourceName" MUST only contain enum values found in the metadata
    And "ResourceName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ResourceRecordID @SocialMedia
  Scenario: ResourceRecordID
    Given "ResourceRecordID" exists in the metadata
    Then "ResourceRecordID" MUST be "String" data type
    And "ResourceRecordID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKey @SocialMedia
  Scenario: ResourceRecordKey
    Given "ResourceRecordKey" exists in the metadata
    Then "ResourceRecordKey" MUST be "String" data type
    And "ResourceRecordKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKeyNumeric @SocialMedia
  Scenario: ResourceRecordKeyNumeric
    Given "ResourceRecordKeyNumeric" exists in the metadata
    Then "ResourceRecordKeyNumeric" MUST be "Integer" data type

  @SocialMediaKey @SocialMedia
  Scenario: SocialMediaKey
    Given "SocialMediaKey" exists in the metadata
    Then "SocialMediaKey" MUST be "String" data type
    And "SocialMediaKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SocialMediaKeyNumeric @SocialMedia
  Scenario: SocialMediaKeyNumeric
    Given "SocialMediaKeyNumeric" exists in the metadata
    Then "SocialMediaKeyNumeric" MUST be "Integer" data type

  @SocialMediaType @SocialMedia
  Scenario: SocialMediaType
    Given "SocialMediaType" exists in the metadata
    And "SocialMediaType" enum values exist in the metadata
    And "SocialMediaType" enum types MUST have exactly one member
    Then "SocialMediaType" MUST be "String" data type
    And "SocialMediaType" MUST only contain enum values found in the metadata
    And "SocialMediaType" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @SocialMediaUrlOrId @SocialMedia
  Scenario: SocialMediaUrlOrId
    Given "SocialMediaUrlOrId" exists in the metadata
    Then "SocialMediaUrlOrId" MUST be "String" data type
    And "SocialMediaUrlOrId" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000
