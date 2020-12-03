Feature: called feature suite
  Called feature test

  Scenario: url and path usage test case1
    Given  url "https://reqres.in"
    And path "/api/users?page=2"
    When method Get
    Then status 200
    And match response.page == 1