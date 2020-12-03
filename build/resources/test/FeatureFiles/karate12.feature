Feature: karate test suite12
  Test using Java functions

  Scenario: Static variable TC
    * def constants = Java.type('misc.automationconstants')
    * print constants.devurl
    * print constants.getDevrule()

  Scenario: Non Static variable TC
      * def env1 =
    """
    function()
    {
      var tmp = Java.type("misc.automationconstants");
      var constants = new tmp();
      return constants.qaurl;
    }
    """
    * def qaurl = call env1
    * print qaurl

  Scenario: Non Static variable TC2dup
    * def env1 =
    """
    function()
    {
            return(new (Java.type("misc.automationconstants"))).qaurl;

    """




