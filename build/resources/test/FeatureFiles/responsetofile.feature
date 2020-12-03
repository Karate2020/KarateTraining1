Feature: Test suite 13
  writing responsse to external file

  Scenario: Test case to write response to external file
    * def lib = Java.type('misc.utils')
    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200
    * lib.writeToFile("res.json", response)
    * def res1 = read("classpath:res.json")
    * print res1
    * print res1.data.last_name
    * def res2 = get res1.data.last_name
    * lib.writeToFile("reselement.txt", res2)
   # * def resreq = read("classpath:reselement.txt")
    * def resreq = { "last_name" : #(read("classpath:reselement.txt"))}
    * print  resreq