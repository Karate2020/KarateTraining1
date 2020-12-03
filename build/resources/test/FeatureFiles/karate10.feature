Feature: karate test suite10
  This is test for Data Driven Testing

  @ddt
  Scenario Outline: Data Driven Test  test case1
    Given  url "https://reqres.in"
    And path "/api/users?page=<pno>"
    When method Get
    Then status 200
    And match response.page == "##"

  Examples:
    | pno |
    | 1 |
    | 2 |
    | 3 |
    | 4 |
    | 5 |







  Scenario: url and path usage test case2
    Given  url "https://reqres.in"
    And path "/api/users?"
    And param page = 2
    When method Get
    Then status 200
    And match response.page == "##"
    * print response