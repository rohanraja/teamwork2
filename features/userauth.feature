Feature: User authentication and role management
  As a site user
  I should be able to log into my personal account
  so that I can manage my custom data


  Scenario: Sign in attempt with invalid username and password
    Given I visit the users sign in page
    And I fill in "rohanraja99@gmail.com" as the user email
    And I fill in "totallyinvalidpass" as the user password
    And I click "Log In"
    Then I should see "Invalid Email or password" on that page
