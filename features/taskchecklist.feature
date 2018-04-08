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


  Scenario: A checklist can have many checklistitems
    Given I am a new, authenticated user
    And I have a checklist named "Sample Checklist"
    And I that checklist has item titled "To be completed"
    When I visit the show page for that checklist
    Then I should see "Sample Checklist" on that page
    And I should see "To be completed" on that page

  Scenario: A checklist should have its items listed on the task page
    Given I am a new, authenticated user
    And I have a task titled "Test Task with checklist"
    And that task has a checklist named "Sample Checklist"
    And I that checklist has item titled "To be completed"
    When I visit the show page for that task
    Then I should see "Test Task with checklist" on that page
    And I should see "Sample Checklist" on that page
    And I should see "To be completed" on that page

  Scenario: A task should have a default checklist autocreated
    Given I am a new, authenticated user
    When I visit the new tasks page
    And I fill in "Test_Task" as the task title
    And I click submit
    And I visit the list of tasks page
    And I click on link "Test_Task"
    Then I should see "Default checklist" on that page

  @javascript
  Scenario: Editing all items from its checklist edit page
    Given I am a new, authenticated user
    And I have a checklist named "Sample Checklist"
    And I that checklist has item titled "To be completed"
    When I visit the edit page for that checklist
    And I click on link "Add Item"
    And I fill in "Newly added check item" to the dynamic list having class "checklistitems"
    And I click on button "submit"
    And I visit the show page for that checklist
    Then I should see "Newly added check item" on that page
    And I should see "To be completed" on that page
