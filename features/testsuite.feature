Feature: Component can have a test suite
  As a developer
  I want to be able to add/run test suite for component
  in order to validate functionalities and TDD

  Scenario: A Component page has a test suite listed on its show page 
    Given I am a new, authenticated user
    And I have an application and a simple component named "Comp_1"
    And that component has a test suite named "Sample Test Pack 1"
    When I visit the show page for that component
    Then I should see "Comp_1" on that page
    And I should see "Sample Test Pack 1" on that page

  Scenario: A test suite can have many test cases
    Given I am a new, authenticated user
    And I have a testsuite titled "TestSuite 1"
    And that testsuite has a testcase titled "TestCase 1"
    When I visit the show page for that testsuite
    Then I should see "TestSuite 1" on that page
    And I should see "TestCase 1" on that page

  Scenario: A test case of a test suite of a component should appear on the component page
    Given I am a new, authenticated user
    And I have an application and a simple component named "Comp_1"
    And that component has a test suite named "Sample Test Pack 1"
    And that testsuite has a testcase titled "Sample TestCase 1"
    When I visit the show page for that component
    Then I should see "Comp_1" on that page
    And I should see "Sample Test Pack 1" on that page
    And I should see "Sample TestCase 1" on that page

  @javascript
  Scenario: Editing all testcases from its testsuite edit page
    Given I am a new, authenticated user
    And I have a testsuite titled "TestSuite 1"
    And that testsuite has a testcase titled "TestCase 1"
    When I visit the edit page for that testsuite
    And I click on link "Add Testcase"
    And I fill in "Newly added testcase" to the dynamic list having class "testcases"
    And I click on button "submit"
    And I visit the show page for that testsuite
    Then I should see "Newly added testcase" on that page

  Scenario: The test suite show page should list its associated components
    Given I am a new, authenticated user
    And I have an application and a simple component named "Comp_1"
    And that component has a test suite named "Sample Test Pack 1"
    When I visit the show page for that testsuite
    Then I should see "Comp_1" on that page

  @javascript
  Scenario: I should be able to create and add new testsuite from the component edit page
    Given I am a new, authenticated user
    And I have an application and a simple component named "Comp_1"
    When I visit the edit page for that component
    And I click on link "Add Testsuite"
    And I fill in "TestSuite for Comp1" to the dynamic list having class "testsuites"
    And I click on button "submit"
    And I visit the show page for that component
    Then I should see "Comp_1" on that page
    And I should see "TestSuite for Comp1" on that page

  Scenario: A component should have a default testsuite autocreated
    Given I am a new, authenticated user
    Given I have an application with few simple components
    When I visit the component list page of the application
    And I click on Create Component button
    And I fill in "TestComp" as the component name
    And I click submit
    When I visit the component list page of the application
    And I click on TestComp component
    Then I should see "Default testsuite" on that page
    And I should see "TestComp" on that page

  Scenario: I should be able to link existing testsuite from the component edit page
