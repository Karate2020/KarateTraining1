Feature: Karate test suite 2
  2nd Training feature consists demonstrating how to validate Json content

  Scenario: Json Test Case 1
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print  json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
     * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: Json Test Case 2
    Given def json =
     """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
     """
    * print  json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}