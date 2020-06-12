# This file was autogenerated on: 20200612130658960
Feature: TeamMembers

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @MemberKey @TeamMembers
  Scenario: MemberKey
    When "MemberKey" exists in the "TeamMembers" metadata
    Then "MemberKey" MUST be "String" data type
    And "MemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MemberKeyNumeric @TeamMembers
  Scenario: MemberKeyNumeric
    When "MemberKeyNumeric" exists in the "TeamMembers" metadata
    Then "MemberKeyNumeric" MUST be "Integer" data type

  @MemberLoginId @TeamMembers
  Scenario: MemberLoginId
    When "MemberLoginId" exists in the "TeamMembers" metadata
    Then "MemberLoginId" MUST be "String" data type
    And "MemberLoginId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @MemberMlsId @TeamMembers
  Scenario: MemberMlsId
    When "MemberMlsId" exists in the "TeamMembers" metadata
    Then "MemberMlsId" MUST be "String" data type
    And "MemberMlsId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @ModificationTimestamp @TeamMembers
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "TeamMembers" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @OriginalEntryTimestamp @TeamMembers
  Scenario: OriginalEntryTimestamp
    When "OriginalEntryTimestamp" exists in the "TeamMembers" metadata
    Then "OriginalEntryTimestamp" MUST be "Timestamp" data type

  @OriginatingSystemID @TeamMembers
  Scenario: OriginatingSystemID
    When "OriginatingSystemID" exists in the "TeamMembers" metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemKey @TeamMembers
  Scenario: OriginatingSystemKey
    When "OriginatingSystemKey" exists in the "TeamMembers" metadata
    Then "OriginatingSystemKey" MUST be "String" data type
    And "OriginatingSystemKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemName @TeamMembers
  Scenario: OriginatingSystemName
    When "OriginatingSystemName" exists in the "TeamMembers" metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemID @TeamMembers
  Scenario: SourceSystemID
    When "SourceSystemID" exists in the "TeamMembers" metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemKey @TeamMembers
  Scenario: SourceSystemKey
    When "SourceSystemKey" exists in the "TeamMembers" metadata
    Then "SourceSystemKey" MUST be "String" data type
    And "SourceSystemKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemName @TeamMembers
  Scenario: SourceSystemName
    When "SourceSystemName" exists in the "TeamMembers" metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @TeamImpersonationLevel @TeamMembers
  Scenario: TeamImpersonationLevel
    When "TeamImpersonationLevel" exists in the "TeamMembers" metadata
    Then "TeamImpersonationLevel" is defined as a single-valued enumeration
    And "TeamImpersonationLevel" standard enumeration values exist in the metadata

  @TeamKey @TeamMembers
  Scenario: TeamKey
    When "TeamKey" exists in the "TeamMembers" metadata
    Then "TeamKey" MUST be "String" data type
    And "TeamKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @TeamKeyNumeric @TeamMembers
  Scenario: TeamKeyNumeric
    When "TeamKeyNumeric" exists in the "TeamMembers" metadata
    Then "TeamKeyNumeric" MUST be "Integer" data type

  @TeamMemberKey @TeamMembers
  Scenario: TeamMemberKey
    When "TeamMemberKey" exists in the "TeamMembers" metadata
    Then "TeamMemberKey" MUST be "String" data type
    And "TeamMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @TeamMemberKeyNumeric @TeamMembers
  Scenario: TeamMemberKeyNumeric
    When "TeamMemberKeyNumeric" exists in the "TeamMembers" metadata
    Then "TeamMemberKeyNumeric" MUST be "Integer" data type

  @TeamMemberNationalAssociationId @TeamMembers
  Scenario: TeamMemberNationalAssociationId
    When "TeamMemberNationalAssociationId" exists in the "TeamMembers" metadata
    Then "TeamMemberNationalAssociationId" MUST be "String" data type
    And "TeamMemberNationalAssociationId" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @TeamMemberStateLicense @TeamMembers
  Scenario: TeamMemberStateLicense
    When "TeamMemberStateLicense" exists in the "TeamMembers" metadata
    Then "TeamMemberStateLicense" MUST be "String" data type
    And "TeamMemberStateLicense" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @TeamMemberType @TeamMembers
  Scenario: TeamMemberType
    When "TeamMemberType" exists in the "TeamMembers" metadata
    Then "TeamMemberType" is defined as a single-valued enumeration
    And "TeamMemberType" standard enumeration values exist in the metadata
