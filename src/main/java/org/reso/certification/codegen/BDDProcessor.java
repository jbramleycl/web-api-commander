package org.reso.certification.codegen;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.usermodel.Sheet;
import org.reso.commander.common.Utils;
import org.reso.models.StandardField;

import java.util.ArrayList;
import java.util.Date;
import java.util.stream.Collectors;

import static org.reso.certification.containers.WebAPITestContainer.EMPTY_STRING;
import static org.reso.certification.containers.WebAPITestContainer.SINGLE_SPACE;

public class BDDProcessor extends WorksheetProcessor {
  private static final Logger LOG = LogManager.getLogger(BDDProcessor.class);
  private static final String
      FEATURE_EXTENSION = ".feature",
      LOCKED_WITH_ENUMERATIONS_KEY = "Locked with Enumerations";

  @Override
  public void processResourceSheet(Sheet sheet) {
    this.sheet = sheet;
    markup.append(BDDTemplates.buildHeaderInfo(sheet.getSheetName(), startTimestamp));
  }

  @Override
  void processNumber(StandardField row) {
    markup.append(BDDTemplates.buildNumberTest(row));
  }

  @Override
  void processStringListSingle(StandardField row) {
    markup.append(BDDTemplates.buildStringListSingleTest(row));
  }

  @Override
  void processString(StandardField row) {
    markup.append(BDDTemplates.buildStringTest(row));
  }

  @Override
  void processBoolean(StandardField row) {
    markup.append(BDDTemplates.buildBooleanTest(row));
  }

  @Override
  void processStringListMulti(StandardField row) {
    markup.append(BDDTemplates.buildStringListMultiTest(row));
  }

  @Override
  void processDate(StandardField row) {
    markup.append(BDDTemplates.buildDateTest(row));
  }

  @Override
  void processTimestamp(StandardField row) {
    markup.append(BDDTemplates.buildTimestampTest(row));
  }

  @Override
  void processCollection(StandardField row) {
    LOG.debug("Collection Type is not supported!");
  }

  @Override
  void generateOutput() {
    LOG.info("Generating BDD .feature files for the following resources: " + resourceTemplates.keySet().toString());
    resourceTemplates.forEach((resourceName, content) -> {
      //put in local directory rather than relative to where the input file is
      Utils.createFile(getDirectoryName(), resourceName.toLowerCase() + FEATURE_EXTENSION, content);
    });
  }

  public static final class BDDTemplates {
    /**
     * Contains various templates used for test generation
     * TODO: add a formatter rather than using inline spaces
     */
    public static String buildHeaderInfo(String resourceName, String generatedTimestamp) {
      if (resourceName == null) return null;
      if (generatedTimestamp == null) generatedTimestamp = Utils.getTimestamp(new Date());
      return
          "# This file was autogenerated on: " + generatedTimestamp + "\n" +
              "Feature: " + resourceName + "\n\n" +
             "  Background:\n" +
              "    Given a RESOScript or Metadata file are provided\n" +
              "    When a RESOScript file is provided\n" +
              "    Then Client Settings and Parameters can be read from the RESOScript\n" +
              "    And a test container was successfully created from the given RESOScript file\n" +
              "    And the test container uses an Authorization Code or Client Credentials for authentication\n" +
              "    And valid metadata were retrieved from the server\n" +
              "    When a metadata file is provided\n" +
              "    Then a test container was successfully created from the given metadata file\n" +
              "    And valid metadata are loaded into the test container\n";
    }

    /**
     * Builds a list of tags for the given field
     * @param field the field whose tags to extract
     * @return an array list containing tags on specific fields when they are present
     */
    private static ArrayList<String> buildTags(StandardField field) {
      ArrayList<String> tags = new ArrayList<>();

      if (field.getParentResourceName() != null && field.getParentResourceName().length() > 0) {
        tags.add(field.getParentResourceName());
      }

      tags.addAll(field.getPropertyTypes());
      tags.addAll(field.getPayloads());

      return tags;
    }

    public static String buildBooleanTest(StandardField field) {
      if (field == null) return EMPTY_STRING;

      return
          "\n  @" + field.getStandardName() + SINGLE_SPACE +
              buildTags(field).stream().map(tag -> "@" + tag).collect(Collectors.joining(SINGLE_SPACE)) + "\n" +
              "  Scenario: " + field.getStandardName() + "\n" +
              "    When \"" + field.getStandardName() + "\" exists in the \"" + field.getParentResourceName() + "\" metadata\n" +
              "    Then \"" + field.getStandardName() + "\" MUST be \"Boolean\" data type\n";
    }

    public static String buildDateTest(StandardField field) {
      if (field == null) return EMPTY_STRING;
      return
          "\n  @" + field.getStandardName() + SINGLE_SPACE +
              buildTags(field).stream().map(tag -> "@" + tag).collect(Collectors.joining(SINGLE_SPACE)) + "\n" +
              "  Scenario: " + field.getStandardName() + "\n" +
              "    When \"" + field.getStandardName() + "\" exists in the \"" + field.getParentResourceName() + "\" metadata\n" +
              "    Then \"" + field.getStandardName() + "\" MUST be \"Date\" data type\n";
    }

    /**
     * Provides special routing for Data Dictionary numeric types, which may be Integer or Decimal
     * @param field the numeric field to build type markup for
     * @return a string containing specific markup for the given field
     */
    public static String buildNumberTest(StandardField field) {
      if (field == null) return EMPTY_STRING;

      if (field.getSuggestedMaxPrecision() != null) return buildDecimalTest(field);
      else return buildIntegerTest(field);
    }

    public static String buildDecimalTest(StandardField field) {
      if (field == null) return EMPTY_STRING;
      String template =
          "\n  @" + field.getStandardName() + SINGLE_SPACE +
              buildTags(field).stream().map(tag -> "@" + tag).collect(Collectors.joining(SINGLE_SPACE)) + "\n" +
              "  Scenario: " + field.getStandardName() + "\n" +
              "    When \"" + field.getStandardName() + "\" exists in the \"" + field.getParentResourceName() + "\" metadata\n" +
              "    Then \"" + field.getStandardName() + "\" MUST be \"Decimal\" data type\n";

      if (field.getSuggestedMaxLength() != null)
        template +=
            "    And \"" + field.getStandardName() + "\" precision SHOULD be less than or equal to the RESO Suggested Max Length of " + field.getSuggestedMaxLength() + "\n";

      if (field.getSuggestedMaxPrecision() != null)
        template +=
            "    And \"" + field.getStandardName() + "\" scale SHOULD be less than or equal to the RESO Suggested Max Scale of " + field.getSuggestedMaxPrecision() + "\n";

      return template;
    }

    public static String buildIntegerTest(StandardField field) {
      if (field == null) return EMPTY_STRING;
      return
          "\n  @" + field.getStandardName() + SINGLE_SPACE +
              buildTags(field).stream().map(tag -> "@" + tag).collect(Collectors.joining(SINGLE_SPACE)) + "\n" +
              "  Scenario: " + field.getStandardName() + "\n" +
              "    When \"" + field.getStandardName() + "\" exists in the \"" + field.getParentResourceName() + "\" metadata\n" +
              "    Then \"" + field.getStandardName() + "\" MUST be \"Integer\" data type\n";
    }

    public static String buildStringListMultiTest(StandardField field) {
      if (field == null) return EMPTY_STRING;

      String template = "\n  @" + field.getStandardName() + SINGLE_SPACE +
          buildTags(field).stream().map(tag -> "@" + tag).collect(Collectors.joining(SINGLE_SPACE)) + "\n" +
          "  Scenario: " + field.getStandardName() + "\n" +
          "    When \"" + field.getStandardName() + "\" exists in the \"" + field.getParentResourceName() + "\" metadata\n" +
          "    Then \"" + field.getStandardName() + "\" MUST be \"Collection of Enumeration\" data type\n";

      if (field.getLookupStatus().contentEquals(LOCKED_WITH_ENUMERATIONS_KEY)) {
        template +=
            "    And \"" + field.getStandardName() + "\" MUST contain only standard enumerations\n" +
            "    And \"" + field.getStandardName() + "\" MUST contain at least one standard enumeration\n";
      }
      return template;
    }

    public static String buildStringListSingleTest(StandardField field) {
      if (field == null) return EMPTY_STRING;
      String template = "\n  @" + field.getStandardName() + SINGLE_SPACE +
              buildTags(field).stream().map(tag -> "@" + tag).collect(Collectors.joining(SINGLE_SPACE)) + "\n" +
              "  Scenario: " + field.getStandardName() + "\n" +
              "    When \"" + field.getStandardName() + "\" exists in the \"" + field.getParentResourceName() + "\" metadata\n" +
              "    Then \"" + field.getStandardName() + "\" MUST be \"Single Enumeration\" data type\n";

      if (field.getLookupStatus().contentEquals(LOCKED_WITH_ENUMERATIONS_KEY)) {
        template +=
            "    And \"" + field.getStandardName() + "\" MUST contain only standard enumerations\n" +
            "    And \"" + field.getStandardName() + "\" MUST contain at least one standard enumeration\n";
      }

      return template;
    }

    public static String buildStringTest(StandardField field) {
      if (field == null) return EMPTY_STRING;
      String template =
          "\n  @" + field.getStandardName() + SINGLE_SPACE +
              buildTags(field).stream().map(tag -> "@" + tag).collect(Collectors.joining(SINGLE_SPACE)) + "\n" +
              "  Scenario: " + field.getStandardName() + "\n" +
              "    When \"" + field.getStandardName() + "\" exists in the \"" + field.getParentResourceName() + "\" metadata\n" +
              "    Then \"" + field.getStandardName() + "\" MUST be \"String\" data type\n";

      if (field.getSuggestedMaxLength() != null)
        template +=
            "    And \"" + field.getStandardName() + "\" length SHOULD be less than or equal to the RESO Suggested Max Length of " + field.getSuggestedMaxLength() + "\n";

      return template;
    }

    public static String buildTimestampTest(StandardField field) {
      if (field == null) return EMPTY_STRING;
      return
          "\n  @" + field.getStandardName() + SINGLE_SPACE +
              buildTags(field).stream().map(tag -> "@" + tag).collect(Collectors.joining(SINGLE_SPACE)) + "\n" +
              "  Scenario: " + field.getStandardName() + "\n" +
              "    When \"" + field.getStandardName() + "\" exists in the \"" + field.getParentResourceName() + "\" metadata\n" +
              "    Then \"" + field.getStandardName() + "\" MUST be \"Timestamp\" data type\n";
    }
  }
}