Feature: Developers can keep track of progress using Tasks
  As a manager
  I should be able to view/edit/create tasks associated with a component 
  so that I can keep track of its progress

  Scenario: Creation of a new independent task
    Given I am a new, authenticated user
    And I visit the list of tasks page
