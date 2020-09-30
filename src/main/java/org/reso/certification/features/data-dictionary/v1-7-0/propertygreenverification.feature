# This file was autogenerated on: 20200929170953761
Feature: PropertyGreenVerification

  Background:
    Given a RESOScript or Metadata file are provided
    When a RESOScript file is provided
    Then Client Settings and Parameters can be read from the RESOScript
    And a test container was successfully created from the given RESOScript file
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server
    When a metadata file is provided
    Then a test container was successfully created from the given metadata file
    And valid metadata are loaded into the test container

  @GreenBuildingVerificationKey @PropertyGreenVerification @IDX
  Scenario: GreenBuildingVerificationKey
    When "GreenBuildingVerificationKey" exists in the "PropertyGreenVerification" metadata
    Then "GreenBuildingVerificationKey" MUST be "String" data type
    And "GreenBuildingVerificationKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @GreenBuildingVerificationKeyNumeric @PropertyGreenVerification @IDX
  Scenario: GreenBuildingVerificationKeyNumeric
    When "GreenBuildingVerificationKeyNumeric" exists in the "PropertyGreenVerification" metadata
    Then "GreenBuildingVerificationKeyNumeric" MUST be "Integer" data type

  @GreenBuildingVerificationType @PropertyGreenVerification @IDX
  Scenario: GreenBuildingVerificationType
    When "GreenBuildingVerificationType" exists in the "PropertyGreenVerification" metadata
    Then "GreenBuildingVerificationType" MUST be "Single Enumeration" data type

  @GreenVerificationBody @PropertyGreenVerification @IDX
  Scenario: GreenVerificationBody
    When "GreenVerificationBody" exists in the "PropertyGreenVerification" metadata
    Then "GreenVerificationBody" MUST be "String" data type
    And "GreenVerificationBody" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @GreenVerificationMetric @PropertyGreenVerification @IDX
  Scenario: GreenVerificationMetric
    When "GreenVerificationMetric" exists in the "PropertyGreenVerification" metadata
    Then "GreenVerificationMetric" MUST be "Integer" data type

  @GreenVerificationRating @PropertyGreenVerification @IDX
  Scenario: GreenVerificationRating
    When "GreenVerificationRating" exists in the "PropertyGreenVerification" metadata
    Then "GreenVerificationRating" MUST be "String" data type
    And "GreenVerificationRating" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @GreenVerificationSource @PropertyGreenVerification @IDX
  Scenario: GreenVerificationSource
    When "GreenVerificationSource" exists in the "PropertyGreenVerification" metadata
    Then "GreenVerificationSource" MUST be "Single Enumeration" data type

  @GreenVerificationStatus @PropertyGreenVerification @IDX
  Scenario: GreenVerificationStatus
    When "GreenVerificationStatus" exists in the "PropertyGreenVerification" metadata
    Then "GreenVerificationStatus" MUST be "Single Enumeration" data type
    And "GreenVerificationStatus" MUST contain only standard enumerations
    And "GreenVerificationStatus" MUST contain at least one standard enumeration

  @GreenVerificationURL @PropertyGreenVerification @IDX
  Scenario: GreenVerificationURL
    When "GreenVerificationURL" exists in the "PropertyGreenVerification" metadata
    Then "GreenVerificationURL" MUST be "String" data type
    And "GreenVerificationURL" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @GreenVerificationVersion @PropertyGreenVerification @IDX
  Scenario: GreenVerificationVersion
    When "GreenVerificationVersion" exists in the "PropertyGreenVerification" metadata
    Then "GreenVerificationVersion" MUST be "String" data type
    And "GreenVerificationVersion" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @GreenVerificationYear @PropertyGreenVerification @IDX
  Scenario: GreenVerificationYear
    When "GreenVerificationYear" exists in the "PropertyGreenVerification" metadata
    Then "GreenVerificationYear" MUST be "Integer" data type

  @ListingId @PropertyGreenVerification @IDX
  Scenario: ListingId
    When "ListingId" exists in the "PropertyGreenVerification" metadata
    Then "ListingId" MUST be "String" data type
    And "ListingId" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKey @PropertyGreenVerification @IDX
  Scenario: ListingKey
    When "ListingKey" exists in the "PropertyGreenVerification" metadata
    Then "ListingKey" MUST be "String" data type
    And "ListingKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ListingKeyNumeric @PropertyGreenVerification @IDX
  Scenario: ListingKeyNumeric
    When "ListingKeyNumeric" exists in the "PropertyGreenVerification" metadata
    Then "ListingKeyNumeric" MUST be "Integer" data type

  @ModificationTimestamp @PropertyGreenVerification @IDX
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "PropertyGreenVerification" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type