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
    And I should see "Reatct" on that page
    And I click on button "Add Functionality"
    And I fill in "Newly Added Funcionality" as the functionality name
    And I click on button "Update"
    Then I should see "Test Funcionality 1" on that page
    And I should see "Newly Added Funcionality" on that page
