Feature: test fixuture suite
  Demo using background after scenario ,after feature

  Background: Before scenario
    * print  "before scenario"
    * configure afterScenario =
    """
    function (){
    karate.log("from after scenario");
    }
    """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature");
    }
    """
    Scenario: Test case1
      * print "from Test case1"

    Scenario: Test case2
      * print "from Test case2"

