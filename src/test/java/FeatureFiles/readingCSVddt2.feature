Feature:  Test suite CSV data
  This is reading CSV data for DDT

  Background:
    * def data = read('classpath:data.csv')

  Scenario Outline: CSV data driven testing
    * print "<cust_id> , <custname>, <age> "
    * def name = {" name" :   <custname>}
    * print name

    Examples:
    |  data |

