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

  Scenario: I should be able to assign a different user while creating new task
    Given I am a new, authenticated user
    And there exists another user
    When I visit the new tasks page
    And I fill in "Test Task" as the task title
    And I select the other user as the assigned user to the task
    And I click submit
    And I visit the list of tasks page
    Then I should see "Test Task" on that page
    And I should see the other user email on that page

  Scenario: Component page should list its tasks
    Given I am a new, authenticated user
    And I have an application and a simple component named "Comp_1"
    And that component has a task named "Sample Task 1"
    And that component has a task named "Yet another Task"
    When I visit the show page for that component
    Then I should see "Comp_1" on that page
    Then I should see "Sample Task 1" on that page
    Then I should see "Yet another Task" on that page

  Scenario: Task page should list its associated components
