Feature: Attributes of a component

  Scenario: Component information page
    Given I have an application with few simple components
    When I visit the component list page of the application
    And I click on the name of one of the components
    Then I should be on the component viewer page
    And I should see the name of the component
