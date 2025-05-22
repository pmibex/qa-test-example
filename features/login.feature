Feature: User Login

  Scenario: Successful login with valid credentials
    Given I am on the login page
    When I enter valid username and password
    And I click the login button
    Then I should be redirected to the dashboard
    And I should see my user profile

  Scenario: Login with invalid password
    Given I am on the login page
    When I enter valid username and an incorrect password
    And I click the login button
    Then I should see an error message

  Scenario: Expired token should deny access
    Given I have a previously issued but expired login token
    When I try to access a protected route
    Then I should be redirected to the login page
