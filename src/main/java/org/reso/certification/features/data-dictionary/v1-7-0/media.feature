# This file was autogenerated on: 20200510110537413
Feature: Media

  Background:
    Given a RESOScript file was provided
    And Client Settings and Parameters were read from the file
    And a test container was successfully created from the given RESOScript
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server

  @ChangedByMemberID @Media
  Scenario: ChangedByMemberID
    Given "ChangedByMemberID" exists in the metadata
    Then "ChangedByMemberID" MUST be "String" data type
    And "ChangedByMemberID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @ChangedByMemberKey @Media
  Scenario: ChangedByMemberKey
    Given "ChangedByMemberKey" exists in the metadata
    Then "ChangedByMemberKey" MUST be "String" data type
    And "ChangedByMemberKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ChangedByMemberKeyNumeric @Media
  Scenario: ChangedByMemberKeyNumeric
    Given "ChangedByMemberKeyNumeric" exists in the metadata
    Then "ChangedByMemberKeyNumeric" MUST be "Integer" data type

  @ClassName @Media
  Scenario: ClassName
    Given "ClassName" exists in the metadata
    And "ClassName" enum values exist in the metadata
    And "ClassName" enum types MUST have exactly one member
    Then "ClassName" MUST be "String" data type
    And "ClassName" MUST only contain enum values found in the metadata
    And "ClassName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ImageHeight @Media
  Scenario: ImageHeight
    Given "ImageHeight" exists in the metadata
    Then "ImageHeight" MUST be "Integer" data type

  @ImageOf @Media
  Scenario: ImageOf
    Given "ImageOf" exists in the metadata
    And "ImageOf" enum values exist in the metadata
    And "ImageOf" enum types MUST have exactly one member
    Then "ImageOf" MUST be "String" data type
    And "ImageOf" MUST only contain enum values found in the metadata
    And "ImageOf" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ImageSizeDescription @Media
  Scenario: ImageSizeDescription
    Given "ImageSizeDescription" exists in the metadata
    And "ImageSizeDescription" enum values exist in the metadata
    And "ImageSizeDescription" enum types MUST have exactly one member
    Then "ImageSizeDescription" MUST be "String" data type
    And "ImageSizeDescription" MUST only contain enum values found in the metadata
    And "ImageSizeDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ImageWidth @Media
  Scenario: ImageWidth
    Given "ImageWidth" exists in the metadata
    Then "ImageWidth" MUST be "Integer" data type

  @LongDescription @Media
  Scenario: LongDescription
    Given "LongDescription" exists in the metadata
    Then "LongDescription" MUST be "String" data type
    And "LongDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 1024

  @MediaCategory @Media
  Scenario: MediaCategory
    Given "MediaCategory" exists in the metadata
    And "MediaCategory" enum values exist in the metadata
    And "MediaCategory" enum types MUST have exactly one member
    Then "MediaCategory" MUST be "String" data type
    And "MediaCategory" MUST only contain enum values found in the metadata
    And "MediaCategory" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MediaHTML @Media
  Scenario: MediaHTML
    Given "MediaHTML" exists in the metadata
    Then "MediaHTML" MUST be "String" data type
    And "MediaHTML" length SHOULD be less than or equal to the RESO Suggested Max Length of 8500

  @MediaKey @Media
  Scenario: MediaKey
    Given "MediaKey" exists in the metadata
    Then "MediaKey" MUST be "String" data type
    And "MediaKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MediaKeyNumeric @Media
  Scenario: MediaKeyNumeric
    Given "MediaKeyNumeric" exists in the metadata
    Then "MediaKeyNumeric" MUST be "Integer" data type

  @MediaModificationTimestamp @Media
  Scenario: MediaModificationTimestamp
    Given "MediaModificationTimestamp" exists in the metadata
    Then "MediaModificationTimestamp" MUST be "Timestamp" data type
    And "MediaModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @MediaObjectID @Media
  Scenario: MediaObjectID
    Given "MediaObjectID" exists in the metadata
    Then "MediaObjectID" MUST be "String" data type
    And "MediaObjectID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @MediaStatus @Media
  Scenario: MediaStatus
    Given "MediaStatus" exists in the metadata
    And "MediaStatus" enum values exist in the metadata
    And "MediaStatus" enum types MUST have exactly one member
    Then "MediaStatus" MUST be "String" data type
    And "MediaStatus" MUST only contain enum values found in the metadata
    And "MediaStatus" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MediaType @Media
  Scenario: MediaType
    Given "MediaType" exists in the metadata
    And "MediaType" enum values exist in the metadata
    And "MediaType" enum types MUST have exactly one member
    Then "MediaType" MUST be "String" data type
    And "MediaType" MUST only contain enum values found in the metadata
    And "MediaType" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @MediaURL @Media
  Scenario: MediaURL
    Given "MediaURL" exists in the metadata
    Then "MediaURL" MUST be "String" data type
    And "MediaURL" length SHOULD be less than or equal to the RESO Suggested Max Length of 8000

  @ModificationTimestamp @Media
  Scenario: ModificationTimestamp
    Given "ModificationTimestamp" exists in the metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type
    And "ModificationTimestamp" length SHOULD be less than or equal to the RESO Suggested Max Length of 27

  @Order @Media
  Scenario: Order
    Given "Order" exists in the metadata
    Then "Order" MUST be "Integer" data type

  @OriginatingSystemID @Media
  Scenario: OriginatingSystemID
    Given "OriginatingSystemID" exists in the metadata
    Then "OriginatingSystemID" MUST be "String" data type
    And "OriginatingSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @OriginatingSystemMediaKey @Media
  Scenario: OriginatingSystemMediaKey
    Given "OriginatingSystemMediaKey" exists in the metadata
    Then "OriginatingSystemMediaKey" MUST be "String" data type
    And "OriginatingSystemMediaKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @OriginatingSystemName @Media
  Scenario: OriginatingSystemName
    Given "OriginatingSystemName" exists in the metadata
    Then "OriginatingSystemName" MUST be "String" data type
    And "OriginatingSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @Permission @Media
  Scenario: Permission
    Given "Permission" exists in the metadata
    And "Permission" enum values exist in the metadata
    And "Permission" enum types MUST have at least one member
    Then "Permission" MUST be "String Array" data type
    And "Permission" SHOULD have no more than the RESO Suggested Max Length of 255 item(s)

  @PreferredPhotoYN @Media
  Scenario: PreferredPhotoYN
    Given "PreferredPhotoYN" exists in the metadata
    And "PreferredPhotoYN" is not a synonym for another field
    Then "PreferredPhotoYN" MUST be "Boolean" data type

  @ResourceName @Media
  Scenario: ResourceName
    Given "ResourceName" exists in the metadata
    And "ResourceName" enum values exist in the metadata
    And "ResourceName" enum types MUST have exactly one member
    Then "ResourceName" MUST be "String" data type
    And "ResourceName" MUST only contain enum values found in the metadata
    And "ResourceName" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @ResourceRecordID @Media
  Scenario: ResourceRecordID
    Given "ResourceRecordID" exists in the metadata
    Then "ResourceRecordID" MUST be "String" data type
    And "ResourceRecordID" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKey @Media
  Scenario: ResourceRecordKey
    Given "ResourceRecordKey" exists in the metadata
    Then "ResourceRecordKey" MUST be "String" data type
    And "ResourceRecordKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @ResourceRecordKeyNumeric @Media
  Scenario: ResourceRecordKeyNumeric
    Given "ResourceRecordKeyNumeric" exists in the metadata
    Then "ResourceRecordKeyNumeric" MUST be "Integer" data type

  @ShortDescription @Media
  Scenario: ShortDescription
    Given "ShortDescription" exists in the metadata
    Then "ShortDescription" MUST be "String" data type
    And "ShortDescription" length SHOULD be less than or equal to the RESO Suggested Max Length of 50

  @SourceSystemID @Media
  Scenario: SourceSystemID
    Given "SourceSystemID" exists in the metadata
    Then "SourceSystemID" MUST be "String" data type
    And "SourceSystemID" length SHOULD be less than or equal to the RESO Suggested Max Length of 25

  @SourceSystemMediaKey @Media
  Scenario: SourceSystemMediaKey
    Given "SourceSystemMediaKey" exists in the metadata
    Then "SourceSystemMediaKey" MUST be "String" data type
    And "SourceSystemMediaKey" length SHOULD be less than or equal to the RESO Suggested Max Length of 255

  @SourceSystemName @Media
  Scenario: SourceSystemName
    Given "SourceSystemName" exists in the metadata
    Then "SourceSystemName" MUST be "String" data type
    And "SourceSystemName" length SHOULD be less than or equal to the RESO Suggested Max Length of 255
