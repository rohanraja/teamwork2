Feature: Developers can keep track of progress using Tasks
  As a manager
  I should be able to view/edit/create tasks associated with a component 
  so that I can keep track of its progress

  Scenario: Current user is assigned by default while creation of a new independent task
    Given I am a new, authenticated user
    When I visit the new tasks page
    And I fill in "Test Task" as the task title
    And I click submit
    And I visit the list of tasks page
    Then I should see "Test Task" on that page
    And I should see the current user email on that page

  Scenario: Component page should list its tasks
  Scenario: Task page should list its associated components
