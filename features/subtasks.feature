Feature: SubTasks of tasks and further

  Scenario: A task should list the sub tasks its composed of.
    Given I am a new, authenticated user
    And I have a task titled "Main Task 1"
    And that task has a subtask titled "Sub Task 1"
    And that task has a subtask titled "Sub Task 2"
    When I visit the show page for that task
    Then I should see "Main Task 1" on that page
    And I should see "Sub Task 1" on that page
    And I should see "Sub Task 2" on that page


  @javascript
  Scenario: Adding subtasks to an existing task
    Given I am a new, authenticated user
    And I have a task titled "Main Task 1"
    When I visit the edit page for that task
    And I click on link "Add Subtask"
    And I fill in "New Subtask 1" to the dynamic list having class "subtasks"
    And I click on button "submit"
    And I visit the show page for that task
    Then I should see "Main Task 1" on that page
    And I should see "New Subtask 1" on that page
