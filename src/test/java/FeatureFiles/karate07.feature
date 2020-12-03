Feature: karate test suite7
  Testing REST API with Json output

  @soap
  Scenario: REST API testing with Json output
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    #And header Content-Type = "application/x-www-form-urlencoded"
    #And request "Celsius=40"
    When method get
    Then status 200
    And match response.status ==   "success"
    And match response.status ==   "#string"
    And match response.data ==   "#array"
    #And match response.data[0].employee_salary ==   "320800"
    And match response.data[0].employee_salary  contains   "320800"
   # And match response //string contains "104"
   # And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    #And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == "json"
    And assert  responseTime <= 2000
    * print response

