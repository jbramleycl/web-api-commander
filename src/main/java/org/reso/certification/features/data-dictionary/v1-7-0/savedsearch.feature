# This file was autogenerated on: 20200417180413416
Feature: SavedSearch

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an authorization_code or client_credentials for authentication
    And metadata were retrieved from the server

  @ClassName
  Scenario: ClassName
    Given "ClassName" exists in the metadata
    And "ClassName" enum values exist in the metadata
    And "ClassName" enum types MUST have at least one member
    Then "ClassName" MUST be "String" data type
    And "ClassName" should only contain enum values found in the metadata
    And "ClassName" enumerations must match  MUST have annotations if they contain special characters
    And "ClassName" length should be less than or equal to the RESO Suggested Max Length of 50

  @MemberKey
  Scenario: MemberKey
    Given "MemberKey" exists in the metadata
    Then "MemberKey" MUST be "String" data type
    And "MemberKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @MemberKeyNumeric
  Scenario: MemberKeyNumeric
    Given "MemberKeyNumeric" exists in the metadata
    Then "MemberKeyNumeric" MUST be "Integer" data type

  @MemberMlsId
  Scenario: MemberMlsId
    Given "MemberMlsId" exists in the metadata
    Then "MemberMlsId" MUST be "String" data type
    And "MemberMlsId" length should be less than or equal to the RESO Suggested Max Length of 25

  @ModificationTimestamp
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @OriginalEntryTimestamp
  Scenario: OriginalEntryTimestamp
    Given "OriginalEntryTimestamp" exists in the metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type
    And "OriginalEntryTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @OriginatingSystemID
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length should be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemKey
  Scenario: OriginatingSystemKey
    Given "OriginatingSystemKey" exists in the metadata
    Then "OriginatingSystemKey" MUST be "String" data type
    And "OriginatingSystemKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemMemberKey
  Scenario: OriginatingSystemMemberKey
    Given "OriginatingSystemMemberKey" exists in the metadata
    Then "OriginatingSystemMemberKey" MUST be "String" data type
    And "OriginatingSystemMemberKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemMemberName
  Scenario: OriginatingSystemMemberName
    Given "OriginatingSystemMemberName" exists in the metadata
    Then "OriginatingSystemMemberName" MUST be "String" data type
    And "OriginatingSystemMemberName" length should be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemName
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length should be less than or equal to the RESO Suggested Max Length of 255

  @ResourceName
  Scenario: ResourceName
    Given "ResourceName" exists in the metadata
    And "ResourceName" enum values exist in the metadata
    And "ResourceName" enum types MUST have at least one member
    Then "ResourceName" MUST be "String" data type
    And "ResourceName" should only contain enum values found in the metadata
    And "ResourceName" enumerations must match  MUST have annotations if they contain special characters
    And "ResourceName" length should be less than or equal to the RESO Suggested Max Length of 50

  @SavedSearchDescription
  Scenario: SavedSearchDescription
    Given "SavedSearchDescription" exists in the metadata
    Then "SavedSearchDescription" MUST be "String" data type
    And "SavedSearchDescription" length should be less than or equal to the RESO Suggested Max Length of 4000

  @SavedSearchKey
  Scenario: SavedSearchKey
    Given "SavedSearchKey" exists in the metadata
    Then "SavedSearchKey" MUST be "String" data type
    And "SavedSearchKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @SavedSearchKeyNumeric
  Scenario: SavedSearchKeyNumeric
    Given "SavedSearchKeyNumeric" exists in the metadata
    Then "SavedSearchKeyNumeric" MUST be "Integer" data type

  @SavedSearchName
  Scenario: SavedSearchName
    Given "SavedSearchName" exists in the metadata
    Then "SavedSearchName" MUST be "String" data type
    And "SavedSearchName" length should be less than or equal to the RESO Suggested Max Length of 255

  @SavedSearchType
  Scenario: SavedSearchType
    Given "SavedSearchType" exists in the metadata
    And "SavedSearchType" enum values exist in the metadata
    And "SavedSearchType" enum types MUST have at least one member
    Then "SavedSearchType" MUST be "String" data type
    And "SavedSearchType" should only contain enum values found in the metadata
    And "SavedSearchType" enumerations must match  MUST have annotations if they contain special characters
    And "SavedSearchType" length should be less than or equal to the RESO Suggested Max Length of 50

  @SearchQuery
  Scenario: SearchQuery
    Given "SearchQuery" exists in the metadata
    Then "SearchQuery" MUST be "String" data type
    And "SearchQuery" length should be less than or equal to the RESO Suggested Max Length of 8000

  @SearchQueryExceptionDetails
  Scenario: SearchQueryExceptionDetails
    Given "SearchQueryExceptionDetails" exists in the metadata
    Then "SearchQueryExceptionDetails" MUST be "String" data type
    And "SearchQueryExceptionDetails" length should be less than or equal to the RESO Suggested Max Length of 255

  @SearchQueryExceptions
  Scenario: SearchQueryExceptions
    Given "SearchQueryExceptions" exists in the metadata
    And "SearchQueryExceptions" enum values exist in the metadata
    And "SearchQueryExceptions" enum types MUST have at least one member
    Then "SearchQueryExceptions" MUST be "String" data type
    And "SearchQueryExceptions" should only contain enum values found in the metadata
    And "SearchQueryExceptions" enumerations must match  MUST have annotations if they contain special characters
    And "SearchQueryExceptions" length should be less than or equal to the RESO Suggested Max Length of 50

  @SearchQueryHumanReadable
  Scenario: SearchQueryHumanReadable
    Given "SearchQueryHumanReadable" exists in the metadata
    Then "SearchQueryHumanReadable" MUST be "String" data type
    And "SearchQueryHumanReadable" length should be less than or equal to the RESO Suggested Max Length of 255

  @SearchQueryType
  Scenario: SearchQueryType
    Given "SearchQueryType" exists in the metadata
    And "SearchQueryType" enum values exist in the metadata
    And "SearchQueryType" enum types MUST have at least one member
    Then "SearchQueryType" MUST be "String" data type
    And "SearchQueryType" should only contain enum values found in the metadata
    And "SearchQueryType" enumerations must match  MUST have annotations if they contain special characters
    And "SearchQueryType" length should be less than or equal to the RESO Suggested Max Length of 50

  @SourceSystemID
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length should be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemKey
  Scenario: SourceSystemKey
    Given "SourceSystemKey" exists in the metadata
    Then "SourceSystemKey" MUST be "String" data type
    And "SourceSystemKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemName
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length should be less than or equal to the RESO Suggested Max Length of 255
