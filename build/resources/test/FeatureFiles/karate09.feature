Feature: karate test suite9
  This is test using url and path

  Scenario: url and path usage test case1
    Given  url "https://reqres.in"
    And path "/api/users?page=2"
    When method Get
    Then status 200
    And match response.page == 1

  Scenario: url and path usage test case2
    Given  url "https://reqres.in"
    And path "/api/users?"
    And param page = 2
    When method Get
    Then status 200
    And match response.page == "##"
    * print response