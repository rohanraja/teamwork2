Feature: User authentication and role management
  As a site user
  I should be able to log into my personal account
  so that I can manage my custom data


  Scenario: Sign in attempt with invalid username and password
    Given I visit the users sign in page
    When I fill in "rohanraja99@gmail.com" as the user email
    And I fill in "totallyinvalidpass" as the user password
    And I click "Log In" to submit
    Then I should see "Invalid Email or password" on that page

  Scenario: Sign up of new user and login test
    Given I visit the users sign up page
    When I fill in "testuser@teamwork.com" as the user email
    And I fill in "testpassword" as the user password
    And I fill in "testpassword" as the user password_confirmation
    And I click "Sign Up" to submit
    Then I should see "You have signed up successfully" on that page
    And I am not signed in
    And I visit the users sign in page
    And I fill in "testuser@teamwork.com" as the user email
    And I fill in "testpassword" as the user password
    And I click "Log In" to submit
    Then I should see "Signed in successfully" on that page


  Scenario: Unauthenticated user on the application list page should be redirected to sign_in
    Given I am not signed in
    And I visit the application list page
    Then I should see "You need to sign in or sign up before continuing" on that page
    And I should be on the login page
