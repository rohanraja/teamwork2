Feature: Create new components in an application
  As an architect
  I want to add a new components to an application
  in order to build the system

  Scenario: Create components button visible on component list page
    Given I have an application with few simple components
    When I visit the component list page of the application
    Then I should see a create components button

  Scenario: Click create components button on component list page
    Given I have an application with few simple components
    When I visit the component list page of the application
    And I click on Create Component button
    Then I should be present on the Create Component page of that app
    And I should see a text input for component name

  Scenario: Click create components button on component list page and create a new component
    Given I have an application with few simple components
    When I visit the component list page of the application
    And I click on Create Component button
    And I fill in TestComp as the new component name
    And I click submit
    Then I should be present on the component list page of that app
    And I should see TestComp on that page
