Feature: Dashboard

  Scenario: Dashboard should display tasks associated with the current user
    Given I am a new, authenticated user
    And I have a task titled "Pending Task 1"
    And I have a task titled "Pending Task 2"
    When I visit the dashboard page
    Then I should see "Pending Task 1" on that page
    And I should see "Pending Task 2" on that page
