Feature: karate test suite6
  Testing SOAP API with external payload file- request xml

  @soap
  Scenario: SOAP API testing
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    #And request read('soapAPI.xml') - if the xml is in resource folder
    And request read('../PayloadData/soapAPI.xml')
    # Need to provide in above format if the xml file is in resource folder
    And request read('1Test.xml')
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    And match response contains "122"
    And match response //CelsiusToFahrenheitResult == 122
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == "xml"
    And assert  responseTime <= 2000
