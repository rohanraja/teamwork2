Feature: Displaying list of components
  As a developer
  I want to see the list of components in an application
  in order to understand its structure

  Scenario: Component list
    Given I have an application with few simple components
    When I visit the component list page of the application
    Then I should see those simple components
