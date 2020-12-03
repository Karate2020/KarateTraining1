Feature:  calling feature suite

  Scenario: calling test case
    * def result = call read('calledFeature.feature')
    * print result
    * match result.responseType == "json"
    * match result.responseHeaders.Transfer-Encoding[0] == 'chunked'
    * match result.response.data[0].name == "cerulean"


