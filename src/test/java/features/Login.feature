Feature: This feature would be used to design the Login page of the application

  Background: Open the application
    Given I have opened the application in browser

  @Sanity
  Scenario: Validate the successful login
    When I click on the Login link
    And I enter username
    And I enter password
    And I click on the Login Button
    Then I should be landed on the home page

  @Regression
  Scenario: Validate the successful login using test data
    When I click on the Login link
    And I enter username "abc@gmail.com"
    And I enter password "@854Abcr"
    And I click on the Login Button
    Then I should be landed on the home page

  @Regression @Rapid
  Scenario Outline: Validate the successful login using multiple test data
    When I click on the Login link
    And I enter username "<UserName>"
    And I enter password "<Password>"
    And I click on the Login Button
    Then I should be landed on the home page

    Examples: 
      | UserName      | Password  |
      | abc@gmail.com | @854Xyzty |
      | abc@xyz.com   | @543Tyrop |

	@F_Login
  Scenario: Validate the Negative login using test data
    When I click on the Login link
    And I enter username "abc@xyz.com"
    And I enter password "Pqr@1234"
    And I click on the Login Button
    Then I should get the error message as "The email or password you have entered is invalid."
