package org.reso.certification.generators;

import org.reso.commander.common.Utils;
import org.reso.models.DataDictionaryRow;

import java.util.Date;

public class BDDTemplates {
  /**
   * Contains various templates used for test generation
   */
  public static String buildHeaderInfo(String content, String generatedTimestamp) {
    if (content == null) return null;
    if (generatedTimestamp == null) generatedTimestamp = Utils.getTimestamp(new Date());
    return
        "# This file was autogenerated on: " + generatedTimestamp +
        "\nFeature: " + content + "\n\n" +
        "  Background:\n" +
        "    Given a RESOScript file was provided\n" +
        "    And Client Settings and Parameters were read from the file\n" +
        "    And a test container was successfully created from the given RESOScript\n" +
        "    And the test container uses an authorization_code or client_credentials for authentication\n" +
        "    And metadata were retrieved from the server\n" +
        "    And metadata are valid\n";
  }

  public static String buildBooleanTest(DataDictionaryRow row) {
    if (row == null) return null;
    return
        "\n  @" + row.getStandardName() +
        "\n  Scenario: " + row.getStandardName() + "\n" +
          "    Given \"" + row.getStandardName() + "\" exists in the metadata\n" +
          "    And \"" + row.getStandardName() + "\" is not a synonym for another field\n" +
          "    Then \"" + row.getStandardName() + "\" MUST be \"Boolean\" data type\n";
  }

  public static String buildDateTest(DataDictionaryRow row) {
    if (row == null) return null;
    String template =
        "\n  @" + row.getStandardName() +
        "\n  Scenario: " + row.getStandardName() + "\n" +
          "    Given \"" + row.getStandardName() + "\" exists in the metadata\n" +
          "    Then \"" + row.getStandardName() + "\" MUST be \"Date\" data type\n";

    if (row.getSuggestedMaxLength() != null)
      template +=
          "    And \"" + row.getStandardName() + "\" length SHOULD be less than or equal to the RESO Suggested Max Length of " + row.getSuggestedMaxLength() + "\n";

    return template;
  }

  public static String buildNumberTest(DataDictionaryRow row) {
    if (row == null) return null;

    if (row.getSuggestedMaxPrecision() != null) return buildDecimalTest(row);
    else return buildIntegerTest(row);
  }

  public static String buildDecimalTest(DataDictionaryRow row) {
    if (row == null) return null;
    String template =
        "\n  @" + row.getStandardName() +
        "\n  Scenario: " + row.getStandardName() + "\n" +
          "    Given \"" + row.getStandardName() + "\" exists in the metadata\n" +
          "    Then \"" + row.getStandardName() + "\" MUST be \"Decimal\" data type\n";

    if (row.getSuggestedMaxLength() != null)
      template +=
          "    And \"" + row.getStandardName() + "\" precision SHOULD be less than or equal to the RESO Suggested Max Length of " + row.getSuggestedMaxLength() + "\n";

    if (row.getSuggestedMaxPrecision() != null)
      template +=
          "    And \"" + row.getStandardName() + "\" scale SHOULD be less than or equal to the RESO Suggested Max Scale of " + row.getSuggestedMaxPrecision() + "\n";

    return template;
  }

  public static String buildIntegerTest(DataDictionaryRow row) {
    if (row == null) return null;
    return
        "\n  @" + row.getStandardName() +
        "\n  Scenario: " + row.getStandardName() + "\n" +
          "    Given \"" + row.getStandardName() + "\" exists in the metadata\n" +
          "    Then \"" + row.getStandardName() + "\" MUST be \"Integer\" data type\n";
  }

  public static String buildStringListMultiTest(DataDictionaryRow row) {
    if (row == null) return null;
    String template =
        "\n  @" + row.getStandardName() +
        "\n  Scenario: " + row.getStandardName() + "\n" +
          "    Given \"" + row.getStandardName() + "\" exists in the metadata\n" +
          "    And \"" + row.getStandardName() + "\" enum values exist in the metadata\n" +
          "    And \"" + row.getStandardName() + "\" enum types MUST have at least one member\n" +
          "    Then \"" + row.getStandardName() + "\" MUST be \"String Array\" data type\n";
    if (row.getSuggestedMaxLength() != null)
      template +=
          "    And \"" + row.getStandardName() + "\" SHOULD have no more than the RESO Suggested Max Length of " + row.getSuggestedMaxLength() + " item(s)\n";

    return template;
  }

  public static String buildStringListSingleTest(DataDictionaryRow row) {
    if (row == null) return null;
    String template =
        "\n  @" + row.getStandardName() +
        "\n  Scenario: " + row.getStandardName() + "\n" +
          "    Given \"" + row.getStandardName() + "\" exists in the metadata\n" +
          "    And \"" + row.getStandardName() + "\" enum values exist in the metadata\n" +
          "    And \"" + row.getStandardName() + "\" enum types MUST have exactly one member\n" +
          "    Then \"" + row.getStandardName() + "\" MUST be \"String\" data type\n" +
          "    And \"" + row.getStandardName() + "\" MUST only contain enum values found in the metadata\n";

    if (row.getSuggestedMaxLength() != null)
      template +=
          "    And \"" + row.getStandardName() + "\" length SHOULD be less than or equal to the RESO Suggested Max Length of " + row.getSuggestedMaxLength() + "\n";

    return template;
  }

  public static String buildStringTest(DataDictionaryRow row) {
    if (row == null) return null;
    String template =
        "\n  @" + row.getStandardName() +
        "\n  Scenario: " + row.getStandardName() + "\n" +
          "    Given \"" + row.getStandardName() + "\" exists in the metadata\n" +
          "    Then \"" + row.getStandardName() + "\" MUST be \"String\" data type\n";

    if (row.getSuggestedMaxLength() != null)
      template +=
          "    And \"" + row.getStandardName() + "\" length SHOULD be less than or equal to the RESO Suggested Max Length of " + row.getSuggestedMaxLength() + "\n";

    return template;
  }
  
  public static String buildTimestampTest(DataDictionaryRow row) {
    if (row == null) return null;
    String template =
        "\n  @" + row.getStandardName() +
        "\n  Scenario: " + row.getStandardName() + "\n" +
          "    Given \"" + row.getStandardName() + "\" exists in the metadata\n" +
          "    Then \"" + row.getStandardName() + "\" MUST be \"Timestamp\" data type\n";

    if (row.getSuggestedMaxLength() != null)
      template +=
          "    And \"" + row.getStandardName() + "\" length SHOULD be less than or equal to the RESO Suggested Max Length of " + row.getSuggestedMaxLength() + "\n";

    return template;
  }
}
