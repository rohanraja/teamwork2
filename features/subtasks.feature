Feature: SubTasks of tasks and further

  Scenario: A task should list the sub tasks its composed of.
    Given I am a new, authenticated user
    And I have a task titled "Main Task 1"
    And that task has a subtask titled "Sub Task 1"
    When I visit the show page for that task
    Then I should see "Main Task 1" on that page
    And I should see "Sub Task 1" on that page
