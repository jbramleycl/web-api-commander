# This file was autogenerated on: 20200415150423335
Feature: Prospecting

  @ActiveYN
  Scenario: ActiveYN
    Given "ActiveYN" exists in the metadata
    Then "ActiveYN" MUST be "Boolean" data type

  @BccEmailList
  Scenario: BccEmailList
    Given "BccEmailList" exists in the metadata
    Then "BccEmailList" MUST be "String" data type
    And "BccEmailList" length should be less than or equal to the RESO Suggested Max Length of 1024

  @BccMeYN
  Scenario: BccMeYN
    Given "BccMeYN" exists in the metadata
    Then "BccMeYN" MUST be "Boolean" data type

  @CcEmailList
  Scenario: CcEmailList
    Given "CcEmailList" exists in the metadata
    Then "CcEmailList" MUST be "String" data type
    And "CcEmailList" length should be less than or equal to the RESO Suggested Max Length of 1024

  @ClientActivatedYN
  Scenario: ClientActivatedYN
    Given "ClientActivatedYN" exists in the metadata
    Then "ClientActivatedYN" MUST be "Boolean" data type

  @ConciergeNotificationsYN
  Scenario: ConciergeNotificationsYN
    Given "ConciergeNotificationsYN" exists in the metadata
    Then "ConciergeNotificationsYN" MUST be "Boolean" data type

  @ConciergeYN
  Scenario: ConciergeYN
    Given "ConciergeYN" exists in the metadata
    Then "ConciergeYN" MUST be "Boolean" data type

  @ContactKey
  Scenario: ContactKey
    Given "ContactKey" exists in the metadata
    Then "ContactKey" MUST be "String" data type
    And "ContactKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @ContactKeyNumeric
  Scenario: ContactKeyNumeric
    Given "ContactKeyNumeric" exists in the metadata
    Then "ContactKeyNumeric" MUST be "Integer" data type

  @DailySchedule
  Scenario: DailySchedule
    Given "DailySchedule" exists in the metadata
    And "DailySchedule" enum values exist in the metadata
    And "DailySchedule" enum types MUST have at least one member
    Then "DailySchedule" MUST be "String Array" data type
    And RESO enumerations for "DailySchedule" MUST have annotations if they contain special characters
    And "DailySchedule" length should be less than or equal to the RESO Suggested Max Length of 1024

  @DisplayTemplateID
  Scenario: DisplayTemplateID
    Given "DisplayTemplateID" exists in the metadata
    Then "DisplayTemplateID" MUST be "String" data type
    And "DisplayTemplateID" length should be less than or equal to the RESO Suggested Max Length of 25

  @Language
  Scenario: Language
    Given "Language" exists in the metadata
    And "Language" enum values exist in the metadata
    And "Language" enum types MUST have at least one member
    Then "Language" MUST be "String" data type
    And "Language" should only contain enum values found in the metadata
    And "Language" enumerations must match  MUST have annotations if they contain special characters
    And "Language" length should be less than or equal to the RESO Suggested Max Length of 25

  @LastNewChangedTimestamp
  Scenario: LastNewChangedTimestamp
    Given "LastNewChangedTimestamp" exists in the metadata
    Then "LastNewChangedTimestamp" MUST be "Timestamp" data type
    And "LastNewChangedTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @LastViewedTimestamp
  Scenario: LastViewedTimestamp
    Given "LastViewedTimestamp" exists in the metadata
    Then "LastViewedTimestamp" MUST be "Timestamp" data type
    And "LastViewedTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @MessageNew
  Scenario: MessageNew
    Given "MessageNew" exists in the metadata
    Then "MessageNew" MUST be "String" data type
    And "MessageNew" length should be less than or equal to the RESO Suggested Max Length of 4000

  @MessageRevise
  Scenario: MessageRevise
    Given "MessageRevise" exists in the metadata
    Then "MessageRevise" MUST be "String" data type
    And "MessageRevise" length should be less than or equal to the RESO Suggested Max Length of 4000

  @MessageUpdate
  Scenario: MessageUpdate
    Given "MessageUpdate" exists in the metadata
    Then "MessageUpdate" MUST be "String" data type
    And "MessageUpdate" length should be less than or equal to the RESO Suggested Max Length of 4000

  @ModificationTimestamp
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @NextSendTimestamp
  Scenario: NextSendTimestamp
    Given "NextSendTimestamp" exists in the metadata
    Then "NextSendTimestamp" MUST be "Timestamp" data type
    And "NextSendTimestamp" length should be less than or equal to the RESO Suggested Max Length of 27

  @OwnerMemberID
  Scenario: OwnerMemberID
    Given "OwnerMemberID" exists in the metadata
    Then "OwnerMemberID" MUST be "String" data type
    And "OwnerMemberID" length should be less than or equal to the RESO Suggested Max Length of 25

  @OwnerMemberKey
  Scenario: OwnerMemberKey
    Given "OwnerMemberKey" exists in the metadata
    Then "OwnerMemberKey" MUST be "String" data type
    And "OwnerMemberKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @OwnerMemberKeyNumeric
  Scenario: OwnerMemberKeyNumeric
    Given "OwnerMemberKeyNumeric" exists in the metadata
    Then "OwnerMemberKeyNumeric" MUST be "Integer" data type

  @ProspectingKey
  Scenario: ProspectingKey
    Given "ProspectingKey" exists in the metadata
    Then "ProspectingKey" MUST be "String" data type
    And "ProspectingKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @ProspectingKeyNumeric
  Scenario: ProspectingKeyNumeric
    Given "ProspectingKeyNumeric" exists in the metadata
    Then "ProspectingKeyNumeric" MUST be "Integer" data type

  @ReasonActiveOrDisabled
  Scenario: ReasonActiveOrDisabled
    Given "ReasonActiveOrDisabled" exists in the metadata
    And "ReasonActiveOrDisabled" enum values exist in the metadata
    And "ReasonActiveOrDisabled" enum types MUST have at least one member
    Then "ReasonActiveOrDisabled" MUST be "String" data type
    And "ReasonActiveOrDisabled" should only contain enum values found in the metadata
    And "ReasonActiveOrDisabled" enumerations must match  MUST have annotations if they contain special characters
    And "ReasonActiveOrDisabled" length should be less than or equal to the RESO Suggested Max Length of 50

  @SavedSearchKey
  Scenario: SavedSearchKey
    Given "SavedSearchKey" exists in the metadata
    Then "SavedSearchKey" MUST be "String" data type
    And "SavedSearchKey" length should be less than or equal to the RESO Suggested Max Length of 255

  @SavedSearchKeyNumeric
  Scenario: SavedSearchKeyNumeric
    Given "SavedSearchKeyNumeric" exists in the metadata
    Then "SavedSearchKeyNumeric" MUST be "Integer" data type

  @ScheduleType
  Scenario: ScheduleType
    Given "ScheduleType" exists in the metadata
    And "ScheduleType" enum values exist in the metadata
    And "ScheduleType" enum types MUST have at least one member
    Then "ScheduleType" MUST be "String" data type
    And "ScheduleType" should only contain enum values found in the metadata
    And "ScheduleType" enumerations must match  MUST have annotations if they contain special characters
    And "ScheduleType" length should be less than or equal to the RESO Suggested Max Length of 25

  @Subject
  Scenario: Subject
    Given "Subject" exists in the metadata
    Then "Subject" MUST be "String" data type
    And "Subject" length should be less than or equal to the RESO Suggested Max Length of 255

  @ToEmailList
  Scenario: ToEmailList
    Given "ToEmailList" exists in the metadata
    Then "ToEmailList" MUST be "String" data type
    And "ToEmailList" length should be less than or equal to the RESO Suggested Max Length of 1024
