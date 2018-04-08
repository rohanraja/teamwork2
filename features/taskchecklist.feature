Feature: Developers can keep verify progress of tasks using Checklists
  As a developer
  I should be able to view/edit/create checklists associated with a task 
  so that I can keep track of its progress

  Scenario: A Task has a checklist listed on its show page 
    Given I am a new, authenticated user
    And I have a task titled "Test Task with checklist"
    And that task has a checklist named "Sample Checklist"
    When I visit the show page for that task
    Then I should see "Test Task with checklist" on that page
    And I should see "Sample Checklist" on that page

