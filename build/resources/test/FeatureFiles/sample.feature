Feature: This is my first Karate Feature
  This is Feature created to test

  Background: This is setup block
    Given This is given pre condition step1
    And  This is given pre condition step2

  @tagname
  Scenario: Firstkaratetestcase
    freetextfor comments

    Given This is given pre condition step1
    And This is given pre condition step2

    When This is action step1
    And This is action step2

    Then This is validation step1
    And This is validation step2

