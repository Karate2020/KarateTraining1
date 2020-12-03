Feature: Karate test suite 1
  Demo of using variables in scenario

  Scenario: Karate test case1
    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "c=", c
    And karate.log("Test ended")

  Scenario: Karate test case2
    Given def a = 10
    * def b = 20
    When def c = a * b
    Then assert c == 200
    * print "c=", c
    * karate.log("Test ended execution")

  Scenario: Karate test case3
    * def a = 1
    * def b = 2
    * def c = a * b
    * assert c == 2
    * print "c=", c
    * karate.log("Test execution")