# This file was autogenerated on: 20200514120546975
Feature: Media

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ChangedByMemberID @Media
  Scenario: ChangedByMemberID
    Given "ChangedByMemberID" exists in the "Media" metadata
    Then "ChangedByMemberID" MUST be "String" data type
    And "ChangedByMemberID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @ChangedByMemberKey @Media
  Scenario: ChangedByMemberKey
    Given "ChangedByMemberKey" exists in the "Media" metadata
    Then "ChangedByMemberKey" MUST be "String" data type
    And "ChangedByMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ChangedByMemberKeyNumeric @Media
  Scenario: ChangedByMemberKeyNumeric
    Given "ChangedByMemberKeyNumeric" exists in the "Media" metadata
    Then "ChangedByMemberKeyNumeric" MUST be "Integer" data type

  @ClassName @Media
  Scenario: ClassName
    Given "ClassName" exists in the "Media" metadata
    And "ClassName" enum values exist in the metadata
    And "ClassName" enum types MUST allow only one member
    And "ClassName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ImageHeight @Media
  Scenario: ImageHeight
    Given "ImageHeight" exists in the "Media" metadata
    Then "ImageHeight" MUST be "Integer" data type

  @ImageOf @Media
  Scenario: ImageOf
    Given "ImageOf" exists in the "Media" metadata
    And "ImageOf" enum values exist in the metadata
    And "ImageOf" enum types MUST allow only one member
    And "ImageOf" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ImageSizeDescription @Media
  Scenario: ImageSizeDescription
    Given "ImageSizeDescription" exists in the "Media" metadata
    And "ImageSizeDescription" enum values exist in the metadata
    And "ImageSizeDescription" enum types MUST allow only one member
    And "ImageSizeDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ImageWidth @Media
  Scenario: ImageWidth
    Given "ImageWidth" exists in the "Media" metadata
    Then "ImageWidth" MUST be "Integer" data type

  @LongDescription @Media
  Scenario: LongDescription
    Given "LongDescription" exists in the "Media" metadata
    Then "LongDescription" MUST be "String" data type
    And "LongDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 1024

  @MediaCategory @Media
  Scenario: MediaCategory
    Given "MediaCategory" exists in the "Media" metadata
    And "MediaCategory" enum values exist in the metadata
    And "MediaCategory" enum types MUST allow only one member
    And "MediaCategory" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MediaHTML @Media
  Scenario: MediaHTML
    Given "MediaHTML" exists in the "Media" metadata
    Then "MediaHTML" MUST be "String" data type
    And "MediaHTML" length SHOULD be less than or equal to the RESO Suggested Max Length of 8500

  @MediaKey @Media
  Scenario: MediaKey
    Given "MediaKey" exists in the "Media" metadata
    Then "MediaKey" MUST be "String" data type
    And "MediaKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MediaKeyNumeric @Media
  Scenario: MediaKeyNumeric
    Given "MediaKeyNumeric" exists in the "Media" metadata
    Then "MediaKeyNumeric" MUST be "Integer" data type

  @MediaModificationTimestamp @Media
  Scenario: MediaModificationTimestamp
    Given "MediaModificationTimestamp" exists in the "Media" metadata
    Then "MediaModificationTimestamp" MUST be "Timestamp" data type
    And "MediaModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @MediaObjectID @Media
  Scenario: MediaObjectID
    Given "MediaObjectID" exists in the "Media" metadata
    Then "MediaObjectID" MUST be "String" data type
    And "MediaObjectID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MediaStatus @Media
  Scenario: MediaStatus
    Given "MediaStatus" exists in the "Media" metadata
    And "MediaStatus" enum values exist in the metadata
    And "MediaStatus" enum types MUST allow only one member
    And "MediaStatus" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MediaType @Media
  Scenario: MediaType
    Given "MediaType" exists in the "Media" metadata
    And "MediaType" enum values exist in the metadata
    And "MediaType" enum types MUST allow only one member
    And "MediaType" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MediaURL @Media
  Scenario: MediaURL
    Given "MediaURL" exists in the "Media" metadata
    Then "MediaURL" MUST be "String" data type
    And "MediaURL" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @ModificationTimestamp @Media
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the "Media" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @Order @Media
  Scenario: Order
    Given "Order" exists in the "Media" metadata
    Then "Order" MUST be "Integer" data type

  @OriginatingSystemID @Media
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the "Media" metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemMediaKey @Media
  Scenario: OriginatingSystemMediaKey
    Given "OriginatingSystemMediaKey" exists in the "Media" metadata
    Then "OriginatingSystemMediaKey" MUST be "String" data type
    And "OriginatingSystemMediaKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemName @Media
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the "Media" metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @Permission @Media
  Scenario: Permission
    Given "Permission" exists in the "Media" metadata
    And "Permission" enum values exist in the metadata
    And "Permission" enum types MUST have at least one member
    And "Permission" SHOULD have no more than the RESO Suggested Max Length of 255 item(s)

  @PreferredPhotoYN @Media
  Scenario: PreferredPhotoYN
    Given "PreferredPhotoYN" exists in the "Media" metadata
    And "PreferredPhotoYN" is not a synonym for another field
    Then "PreferredPhotoYN" MUST be "Boolean" data type

  @ResourceName @Media
  Scenario: ResourceName
    Given "ResourceName" exists in the "Media" metadata
    And "ResourceName" enum values exist in the metadata
    And "ResourceName" enum types MUST allow only one member
    And "ResourceName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ResourceRecordID @Media
  Scenario: ResourceRecordID
    Given "ResourceRecordID" exists in the "Media" metadata
    Then "ResourceRecordID" MUST be "String" data type
    And "ResourceRecordID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKey @Media
  Scenario: ResourceRecordKey
    Given "ResourceRecordKey" exists in the "Media" metadata
    Then "ResourceRecordKey" MUST be "String" data type
    And "ResourceRecordKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKeyNumeric @Media
  Scenario: ResourceRecordKeyNumeric
    Given "ResourceRecordKeyNumeric" exists in the "Media" metadata
    Then "ResourceRecordKeyNumeric" MUST be "Integer" data type

  @ShortDescription @Media
  Scenario: ShortDescription
    Given "ShortDescription" exists in the "Media" metadata
    Then "ShortDescription" MUST be "String" data type
    And "ShortDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @SourceSystemID @Media
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the "Media" metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemMediaKey @Media
  Scenario: SourceSystemMediaKey
    Given "SourceSystemMediaKey" exists in the "Media" metadata
    Then "SourceSystemMediaKey" MUST be "String" data type
    And "SourceSystemMediaKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemName @Media
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the "Media" metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255