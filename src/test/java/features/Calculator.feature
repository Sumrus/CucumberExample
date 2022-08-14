Feature: This feature would be creating a calculator for Add and Substract

  Scenario: Additon of numbers
    Given I open the calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario: Subtractions of number
    Given I open the calculator
    When I sub 10 and 5
    Then I should get the result as 5

  Scenario Outline: To Add two numbers using scenario outline
    Given I open the calculator
    When I add <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    4 |    7 |     11 |
      |    7 |    6 |     13 |

  Scenario: Add multiple numbers using cucumber data table
    Given I open the calculator
    When I add below numbers
      | 4 |
      | 5 |
      | 7 |
      | 8 |
    Then I should get the result as 24

  Scenario: Add multiple numbers using cucumber data table
    Given I open the calculator
    When I add below numbers using List
      |  4 |
      |  5 |
      |  7 |
      |  8 |
      | 10 |
    Then I should get the result as 34

  Scenario: To calculate the total bill of the order
    Given I open the calculator
    When I order below items
      | coffee | 23 |
      | tea    | 27 |
    Then I should get the result as 50

  Scenario: To calculate the total bill of the order using quantity
    Given I open the calculator
    When I order below items and quantity
      | coffee | 1 | 10 |
      | tea    | 2 | 20 |
      | burger | 3 | 30 |
    Then I should get the result as 140
