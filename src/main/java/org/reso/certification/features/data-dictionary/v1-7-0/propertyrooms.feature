# This file was autogenerated on: 20200419130430489
Feature: PropertyRooms

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an authorization_code or client_credentials for authentication
    And metadata were retrieved from the server
    And metadata are valid

  @ListingId
  Scenario: ListingId
    Given "ListingId" exists in the metadata
    Then "ListingId" MUST be "String" data type
    And "ListingId" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKey
  Scenario: ListingKey
    Given "ListingKey" exists in the metadata
    Then "ListingKey" MUST be "String" data type
    And "ListingKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKeyNumeric
  Scenario: ListingKeyNumeric
    Given "ListingKeyNumeric" exists in the metadata
    Then "ListingKeyNumeric" MUST be "Integer" data type

  @ModificationTimestamp
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @RoomArea
  Scenario: RoomArea
    Given "RoomArea" exists in the metadata
    Then "RoomArea" MUST be "Decimal" data type
    And "RoomArea" precision SHOULD be less than or equal to the RESO Suggested Max Length of 14
    And "RoomArea" scale SHOULD be less than or equal to the RESO Suggested Max Scale of 2

  @RoomAreaSource
  Scenario: RoomAreaSource
    Given "RoomAreaSource" exists in the metadata
    And "RoomAreaSource" enum values exist in the metadata
    And "RoomAreaSource" enum types MUST have exactly one member
    Then "RoomAreaSource" MUST be "String" data type
    And "RoomAreaSource" MUST only contain enum values found in the metadata
    And "RoomAreaSource" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @RoomAreaUnits
  Scenario: RoomAreaUnits
    Given "RoomAreaUnits" exists in the metadata
    And "RoomAreaUnits" enum values exist in the metadata
    And "RoomAreaUnits" enum types MUST have exactly one member
    Then "RoomAreaUnits" MUST be "String" data type
    And "RoomAreaUnits" MUST only contain enum values found in the metadata
    And "RoomAreaUnits" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @RoomDescription
  Scenario: RoomDescription
    Given "RoomDescription" exists in the metadata
    Then "RoomDescription" MUST be "String" data type
    And "RoomDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 1024

  @RoomDimensions
  Scenario: RoomDimensions
    Given "RoomDimensions" exists in the metadata
    Then "RoomDimensions" MUST be "String" data type
    And "RoomDimensions" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @RoomFeatures
  Scenario: RoomFeatures
    Given "RoomFeatures" exists in the metadata
    And "RoomFeatures" enum values exist in the metadata
    And "RoomFeatures" enum types MUST have at least one member
    Then "RoomFeatures" MUST be "String Array" data type
    And "RoomFeatures" SHOULD have no more than the RESO Suggested Max Length of 1024 item(s)

  @RoomKey
  Scenario: RoomKey
    Given "RoomKey" exists in the metadata
    Then "RoomKey" MUST be "String" data type
    And "RoomKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @RoomKeyNumeric
  Scenario: RoomKeyNumeric
    Given "RoomKeyNumeric" exists in the metadata
    Then "RoomKeyNumeric" MUST be "Integer" data type

  @RoomLength
  Scenario: RoomLength
    Given "RoomLength" exists in the metadata
    Then "RoomLength" MUST be "Decimal" data type
    And "RoomLength" precision SHOULD be less than or equal to the RESO Suggested Max Length of 14
    And "RoomLength" scale SHOULD be less than or equal to the RESO Suggested Max Scale of 2

  @RoomLengthWidthSource
  Scenario: RoomLengthWidthSource
    Given "RoomLengthWidthSource" exists in the metadata
    And "RoomLengthWidthSource" enum values exist in the metadata
    And "RoomLengthWidthSource" enum types MUST have exactly one member
    Then "RoomLengthWidthSource" MUST be "String" data type
    And "RoomLengthWidthSource" MUST only contain enum values found in the metadata
    And "RoomLengthWidthSource" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @RoomLengthWidthUnits
  Scenario: RoomLengthWidthUnits
    Given "RoomLengthWidthUnits" exists in the metadata
    And "RoomLengthWidthUnits" enum values exist in the metadata
    And "RoomLengthWidthUnits" enum types MUST have exactly one member
    Then "RoomLengthWidthUnits" MUST be "String" data type
    And "RoomLengthWidthUnits" MUST only contain enum values found in the metadata
    And "RoomLengthWidthUnits" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @RoomLevel
  Scenario: RoomLevel
    Given "RoomLevel" exists in the metadata
    And "RoomLevel" enum values exist in the metadata
    And "RoomLevel" enum types MUST have exactly one member
    Then "RoomLevel" MUST be "String" data type
    And "RoomLevel" MUST only contain enum values found in the metadata
    And "RoomLevel" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @RoomType
  Scenario: RoomType
    Given "RoomType" exists in the metadata
    And "RoomType" enum values exist in the metadata
    And "RoomType" enum types MUST have exactly one member
    Then "RoomType" MUST be "String" data type
    And "RoomType" MUST only contain enum values found in the metadata
    And "RoomType" length SHOULD be less than or equal to the RESO Suggested Max Length of 1024

  @RoomWidth
  Scenario: RoomWidth
    Given "RoomWidth" exists in the metadata
    Then "RoomWidth" MUST be "Decimal" data type
    And "RoomWidth" precision SHOULD be less than or equal to the RESO Suggested Max Length of 14
    And "RoomWidth" scale SHOULD be less than or equal to the RESO Suggested Max Scale of 2