Feature: Displaying list of components
  As a developer
  I want to see the list of components in an application
  in order to understand its structure

  Scenario: App with two simple components
    Given I am a new, authenticated user
    And I have an application with few simple components
    When I visit the component list page of the application
    Then I should see those simple components

  Scenario: Status and Description visible on components list page
    Given I am a new, authenticated user
    And I have an application with few simple components
    When I visit the component list page of the application
    Then I should see those simple components
    And I should see Description on that page
    And I should see Status on that page
    And I should see New on that page
    And I should see Category on that page
