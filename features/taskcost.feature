Feature: Tasks have cost assiciated with them

  Scenario: A task has estimated cost associated with it
    Given I am a new, authenticated user
    And I have a task titled "Main Task 1" with cost 66 days
    When I visit the show page for that task
    Then I should see "Main Task 1" on that page
    And I should see "66" on that page
