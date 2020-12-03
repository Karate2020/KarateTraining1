Feature: Karate test suite 8
  REST API end to end testing

  Scenario: create fetch update delete employee test
    Given  url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"subbu","salary":"9809121","age":"23"}
    When method POST
    Then status 200
    * def id = response.data.id
    * match response.data.name == "subbu"
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/"+id
    When method GET
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/update/21"+id
    And request {"name":"subbu","salary":"9809121","age":"51"}
    When method PUT
    Then Status 200

    Given url "http://dummy.restapiexample.com/api/v1/delete/"+id
    When method DELETE
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/employee/"+id
    When method GET
    Then status 200
