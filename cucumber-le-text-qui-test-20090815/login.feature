Feature: Login
  To ensure the safety of the application
  A regular user of the system
  Must authenticate before using the app

  Scenario: Success Login
    Given I have one user "shingara" with password "tintinpouet"
    When I go to /login
    And I fill in "login" with "shingara"
    And I fill in "password" with "tintinpouet"
    And I press "Log In"
    Then the request should be success
    And I should see an notice message
    And I should not see "Administration" 
