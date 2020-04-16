# This file was autogenerated on: 20200415150423335
Feature: PropertyGreenVerification

  @GreenBuildingVerificationKey
  Scenario: GreenBuildingVerificationKey
    Given "GreenBuildingVerificationKey" exists in the metadata
    Then "GreenBuildingVerificationKey" MUST be "String" data type
    And "GreenBuildingVerificationKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @GreenBuildingVerificationKeyNumeric
  Scenario: GreenBuildingVerificationKeyNumeric
    Given "GreenBuildingVerificationKeyNumeric" exists in the metadata
    Then "GreenBuildingVerificationKeyNumeric" MUST be "Integer" data type

  @GreenBuildingVerificationType
  Scenario: GreenBuildingVerificationType
    Given "GreenBuildingVerificationType" exists in the metadata
    And "GreenBuildingVerificationType" enum values exist in the metadata
    And "GreenBuildingVerificationType" enum types MUST have at least one member
    Then "GreenBuildingVerificationType" MUST be "String" data type
    And "GreenBuildingVerificationType" should only contain enum values found in the metadata
    And "GreenBuildingVerificationType" enumerations must match  MUST have annotations if they contain special characters
    And "GreenBuildingVerificationType" length should be less than or equal to the RESO Suggested Max Length of 1024

  @GreenVerificationBody
  Scenario: GreenVerificationBody
    Given "GreenVerificationBody" exists in the metadata
    Then "GreenVerificationBody" MUST be "String" data type
    And "GreenVerificationBody" length should be less than or equal to the RESO Suggested Max Length of 50

  @GreenVerificationMetric
  Scenario: GreenVerificationMetric
    Given "GreenVerificationMetric" exists in the metadata
    Then "GreenVerificationMetric" MUST be "Integer" data type

  @GreenVerificationRating
  Scenario: GreenVerificationRating
    Given "GreenVerificationRating" exists in the metadata
    Then "GreenVerificationRating" MUST be "String" data type
    And "GreenVerificationRating" length should be less than or equal to the RESO Suggested Max Length of 50

  @GreenVerificationSource
  Scenario: GreenVerificationSource
    Given "GreenVerificationSource" exists in the metadata
    And "GreenVerificationSource" enum values exist in the metadata
    And "GreenVerificationSource" enum types MUST have at least one member
    Then "GreenVerificationSource" MUST be "String" data type
    And "GreenVerificationSource" should only contain enum values found in the metadata
    And "GreenVerificationSource" enumerations must match  MUST have annotations if they contain special characters
    And "GreenVerificationSource" length should be less than or equal to the RESO Suggested Max Length of 25

  @GreenVerificationStatus
  Scenario: GreenVerificationStatus
    Given "GreenVerificationStatus" exists in the metadata
    And "GreenVerificationStatus" enum values exist in the metadata
    And "GreenVerificationStatus" enum types MUST have at least one member
    Then "GreenVerificationStatus" MUST be "String" data type
    And "GreenVerificationStatus" should only contain enum values found in the metadata
    And "GreenVerificationStatus" enumerations must match  MUST have annotations if they contain special characters
    And "GreenVerificationStatus" length should be less than or equal to the RESO Suggested Max Length of 25

  @GreenVerificationURL
  Scenario: GreenVerificationURL
    Given "GreenVerificationURL" exists in the metadata
    Then "GreenVerificationURL" MUST be "String" data type
    And "GreenVerificationURL" length should be less than or equal to the RESO Suggested Max Length of 8000

  @GreenVerificationVersion
  Scenario: GreenVerificationVersion
    Given "GreenVerificationVersion" exists in the metadata
    Then "GreenVerificationVersion" MUST be "String" data type
    And "GreenVerificationVersion" length should be less than or equal to the RESO Suggested Max Length of 25

  @GreenVerificationYear
  Scenario: GreenVerificationYear
    Given "GreenVerificationYear" exists in the metadata
    Then "GreenVerificationYear" MUST be "Integer" data type

  @ListingId
  Scenario: ListingId
    Given "ListingId" exists in the metadata
    Then "ListingId" MUST be "String" data type
    And "ListingId" length should be less than or equal to the RESO Suggested Max Length of 255

  @ListingKey
  Scenario: ListingKey
    Given "ListingKey" exists in the metadata
    Then "ListingKey" MUST be "String" data type
    And "ListingKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @ListingKeyNumeric
  Scenario: ListingKeyNumeric
    Given "ListingKeyNumeric" exists in the metadata
    Then "ListingKeyNumeric" MUST be "Integer" data type

  @ModificationTimestamp
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27
