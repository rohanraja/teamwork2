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
