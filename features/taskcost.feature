Feature: Tasks have cost assiciated with them

  Scenario: A task has estimated cost associated with it
    Given I am a new, authenticated user
    And I have a task titled "Main Task 1" with cost 66 days
    When I visit the show page for that task
    Then I should see "Main Task 1" on that page
    And I should see "66" on that page

  Scenario: Create a new task with estimated cost
    Given I am a new, authenticated user
    When I visit the new tasks page
    And I fill in "Test Task" as the task title
    And I fill in "77" as the task estimated_cost
    And I click submit
    And I visit the list of tasks page
    Then I should see "Test Task" on that page
    And I should see "77" on that page
