Feature: List of editable functionalities for a component
  As a site user
  I should be able to add/remove functionalities to a component
  so that I can maintain a checklist of functionalities


  Scenario: Component page should have list of functionalities
    Given I am a new, authenticated user
    And I have an application with few simple components
    And that application has a functionality named "Test Funcionality 1"
    When I visit the component page of the first component of my application
    Then I should see "Test Funcionality 1" on that page
    And I should see "Functionalities" on that page

  @javascript
  Scenario: Add new functionality to a component from the component page
    Given I am a new, authenticated user
    And I have an application with few simple components
    And that application has a functionality named "Test Funcionality 1"
    When I visit the component page of the first component of my application
    And I click on link "Edit"
    And I click on link "Add Functionality"
    And I fill in "Newly Added Funcionality" to the dynamic list having class "functionalities"
    And I click on button "submit"
    And I visit the component page of the first component of my application
    Then I should see "Test Funcionality 1" on that page
    And I should see "Newly Added Funcionality" on that page

  @javascript
  Scenario: Without clicking update, functionalitiy should not be added
    Given I am a new, authenticated user
    And I have an application with few simple components
    And that application has a functionality named "Test Funcionality 1"
    When I visit the component page of the first component of my application
    And I click on link "Edit"
    And I click on link "Add Functionality"
    And I fill in "Newly Added Funcionality" to the dynamic list having class "functionalities"
    And I visit the component page of the first component of my application
    Then I should see "Test Funcionality 1" on that page
    And I should not see "Newly Added Funcionality" on that page

  @javascript
  Scenario: Add a functionality directly from new component form
    Given I am a new, authenticated user
    Given I have an application with few simple components
    When I visit the component list page of the application
    And I click on Create Component button
    And I fill in "TestComp" as the component name
    And I fill in "TestDesc" as the component description
    And I fill in "TestCategory" as the component category
    And I click on link "Add Functionality"
    And I fill in "Newly Added Funcionality" to the dynamic list having class "functionalities"
    And I click on button "submit"
    And I visit the component list page of the application
    And I click on TestComp component
    And I should see "TestComp" on that page
    And I should see "TestDesc" on that page
    And I should see "TestCategory" on that page
    And I should see "Newly Added Funcionality" on that page
