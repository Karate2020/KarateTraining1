Feature: karate test suite11
  Demo of using java script functions within scrnario

  Scenario: Test case javascript1
    * def fn1 = function(){ return 1; }

    * def fn2 =
    """
    function(id) {
    karate.log(id);
    }
    """
    * print fn1()
    * fn2('karatetest')
