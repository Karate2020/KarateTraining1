Feature: karate config suite
  Reading the global variable from config file

  Scenario: Test case to read variable from config file
    Given url baseUrl
    And path listusers
    When method get
    Then status 200