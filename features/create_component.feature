Feature: Create new components in an application
  As an architect
  I want to add a new components to an application
  in order to build the system

  Scenario: Create simple component
    Given I am a new, authenticated user
    Given I have an application with few simple components
    When I visit the component list page of the application
    And I click on Create Component button
    And I fill in "TestComp" as the component name
    And I click submit
    Then I should be present on the component list page of that app
    And I should see "TestComp" on that page
    And I click on TestComp component

  Scenario: Create component with description
    Given I am a new, authenticated user
    Given I have an application with few simple components
    When I visit the component list page of the application
    And I click on Create Component button
    And I fill in "TestComp" as the component name
    And I fill in "TestDesc" as the component description
    And I click submit
    Then I should be present on the component list page of that app
    And I click on TestComp component
    And I should see "TestComp" on that page
    And I should see "TestDesc" on that page

  Scenario: Create component with category
    Given I am a new, authenticated user
    Given I have an application with few simple components
    When I visit the component list page of the application
    And I click on Create Component button
    And I fill in "TestComp" as the component name
    And I fill in "TestDesc" as the component description
    And I fill in "TestCategory" as the component category
    And I click submit
    Then I should be present on the component list page of that app
    And I click on TestComp component
    And I should see "TestComp" on that page
    And I should see "TestDesc" on that page
    And I should see "TestCategory" on that page

  Scenario: Create component with initial status as new
    Given I am a new, authenticated user
    Given I have an application with few simple components
    When I visit the component list page of the application
    And I click on Create Component button
    And I fill in "TestComp" as the component name
    And I click submit
    And I click on TestComp component
    Then I should see "Status" on that page
    And I should see "New" on that page
